export async function onRequest(context) {
    const { request, env } = context;

    if (request.method !== 'POST') {
        return Response.json({ error: 'Method not allowed' }, { status: 405 });
    }

    try {
        const body = await request.json();
        const { season_plan_id } = body;

        if (!season_plan_id) {
            return Response.json({ error: 'season_plan_id is required' }, { status: 400 });
        }

        // 1. Fetch Season Plan
        const planRes = await env.DB.prepare(`SELECT * FROM season_plans WHERE id = ?`).bind(season_plan_id).first();
        if (!planRes) return Response.json({ error: 'Season plan not found' }, { status: 404 });

        const varietyName = planRes.variety_name;
        const fieldName = planRes.field_name;
        const baseDateStr = planRes.base_date; // Expected format: YYYY-MM-DD

        if (!varietyName || !fieldName || !baseDateStr) {
            return Response.json({ error: 'Season plan is missing required fields (variety, field, or base_date)' }, { status: 400 });
        }

        // 2. Fetch Field Metrics for scaling
        const fieldRes = await env.DB.prepare(`SELECT * FROM fields WHERE name = ?`).bind(fieldName).first();
        if (!fieldRes) return Response.json({ error: f`Field '{fieldName}' not found` }, { status: 404 });

        const fieldArea = fieldRes.area_total || 0; // m2
        const fieldPerimeter = fieldRes.perimeter || 0; // m

        // 3. Fetch Process Templates
        const { results: templates } = await env.DB.prepare(
            `SELECT * FROM process_master WHERE variety_name = ?`
        ).bind(varietyName).all();

        if (!templates || templates.length === 0) {
            return Response.json({ error: `No process templates found for variety '${varietyName}'` }, { status: 404 });
        }

        // 4. Compute Tasks
        // We will collect multiple INSERT values
        const baseDate = new Date(baseDateStr);
        let insertValues = [];
        let params = [];

        for (const t of templates) {
            // Calculate actual date based on offset
            const taskDate = new Date(baseDate.getTime());
            const offsetDays = parseInt(t.base_day_offset) || 0;
            taskDate.setDate(taskDate.getDate() + offsetDays);

            // Format YYYY-MM-DD
            const scheduledDate = taskDate.toISOString().split('T')[0];

            // Scaling Logic
            // The template generally implies per-unit values. 
            // e.g., effort_value = 10, effort_unit = '分', unit_value = 100, unit_name = 'm2'
            // Ratio = Actual Field Size / Base Unit Size
            let scaleRatio = 1.0;

            // Heuristic string matching for unit categories matching field properties
            const uName = (t.unit_name || '').toLowerCase();
            const uType = (t.unit_type || '').toLowerCase();
            const uValue = parseFloat(t.unit_value) || 1;

            if (uName.includes('m2') || uName.includes('面積') || uType.includes('面積')) {
                scaleRatio = fieldArea / uValue;
            } else if (uName.includes('m') || uName.includes('長') || uType.includes('長')) {
                scaleRatio = fieldPerimeter / uValue;
            } else {
                // If the unit is per 'plant' or 'ridge', we would need field_designs info.
                // Assuming 1-to-1 flat scalar for discrete unrecognized units or missing units
                scaleRatio = 1.0;
            }

            // Don't scale if denominator was 0 or invalid
            if (scaleRatio <= 0 || !isFinite(scaleRatio)) scaleRatio = 1.0;

            // Effort calculation
            const baseEffort = parseFloat(t.effort_value) || 0;
            const actualEffort = (baseEffort * scaleRatio).toFixed(2);

            // Material calculation
            const baseMaterialQty = parseFloat(t.material_qty) || 0;
            const actualMaterialQty = (baseMaterialQty * scaleRatio).toFixed(2);

            // Collect query bindings
            insertValues.push(`(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`);
            params.push(
                '未', // status
                t.unit_type || '', // calculation_basis
                t.frequency || '',
                t.work_major || '',
                t.work_mid || '',
                t.work_minor || '',
                fieldName,
                t.unit_type || '',
                parseFloat(actualEffort), // mapped to base_work_hours
                t.effort_unit || '', // time_unit
                t.material_major || '',
                t.material_mid || '',
                t.material_name || '',
                t.material_desc || '',
                parseFloat(actualMaterialQty), // material_req_qty
                t.material_unit || '',
                t.equipment_category || '',
                t.equipment_name || '',
                scheduledDate, // base_date
                varietyName // crop_name
            );
        }

        // 5. Bulk Insert Tasks
        if (insertValues.length > 0) {
            // SQLite allows up to 999 vars or chunking. 
            // 20 params * ~30 templates = 600 params per plan, safe for one query.
            const query = `
                INSERT INTO tasks (
                    status, calculation_basis, frequency, major_category, mid_category, minor_category,
                    field_name, unit_category, base_work_hours, time_unit,
                    material_major, material_mid, material_name, material_desc, material_req_qty, material_unit,
                    equipment_category, equipment_name, base_date, crop_name
                ) VALUES ${insertValues.join(', ')}
            `;

            await env.DB.prepare(query).bind(...params).run();
        }

        return Response.json({ success: true, count: templates.length, message: `Successfully generated ${templates.length} tasks.` });

    } catch (err) {
        console.error('Task Generation Error:', err);
        return Response.json({ error: err.message }, { status: 500 });
    }
}
