export async function onRequest(context) {
    const { request, env } = context;

    if (request.method !== 'POST') {
        return Response.json({ error: 'Method not allowed' }, { status: 405 });
    }

    try {
        const { season_plan_id } = await request.json();

        if (!season_plan_id) {
            return Response.json({ error: 'season_plan_id is required' }, { status: 400 });
        }

        // 1. Fetch Season Plan
        const plan = await env.DB.prepare('SELECT * FROM season_plans WHERE id = ?').bind(season_plan_id).first();
        if (!plan) return Response.json({ error: 'Season plan not found' }, { status: 404 });

        const { variety_name, field_name, base_date } = plan;
        if (!variety_name || !field_name || !base_date) {
            return Response.json({ error: 'Season plan is missing required fields (variety, field, or base_date)' }, { status: 400 });
        }

        // 2. Fetch Field Metrics for scaling
        const field = await env.DB.prepare('SELECT * FROM fields WHERE name = ?').bind(field_name).first();
        if (!field) return Response.json({ error: `Field '${field_name}' not found` }, { status: 404 });

        // 3. Fetch Process Templates
        const { results: templates } = await env.DB.prepare(
            'SELECT * FROM process_master WHERE variety_name = ?'
        ).bind(variety_name).all();

        if (!templates?.length) {
            return Response.json({ error: `No process templates found for variety '${variety_name}'` }, { status: 404 });
        }

        // 4. Build task INSERT statements
        const baseDate = new Date(base_date);
        const insertSQL = `INSERT INTO tasks (
            status, calculation_basis, frequency, major_category, mid_category, minor_category,
            field_name, unit_category, base_work_hours, time_unit,
            material_major, material_mid, material_name, material_desc, material_req_qty, material_unit,
            equipment_category, equipment_name, base_date, crop_name
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

        const stmts = templates.map(t => {
            const taskDate = new Date(baseDate);
            taskDate.setDate(taskDate.getDate() + (parseInt(t.base_day_offset) || 0));
            const scheduledDate = taskDate.toISOString().split('T')[0];

            const scaleRatio = computeScaleRatio(t, field);
            const actualEffort = ((parseFloat(t.effort_value) || 0) * scaleRatio).toFixed(2);
            const actualMaterialQty = ((parseFloat(t.material_qty) || 0) * scaleRatio).toFixed(2);

            return env.DB.prepare(insertSQL).bind(
                '未',
                t.unit_type || '',
                t.frequency || '',
                t.work_major || '',
                t.work_mid || '',
                t.work_minor || '',
                field_name,
                t.unit_type || '',
                parseFloat(actualEffort),
                t.effort_unit || '',
                t.material_major || '',
                t.material_mid || '',
                t.material_name || '',
                t.material_desc || '',
                parseFloat(actualMaterialQty),
                t.material_unit || '',
                t.equipment_category || '',
                t.equipment_name || '',
                scheduledDate,
                variety_name
            );
        });

        // 5. Execute as batch transaction
        await env.DB.batch(stmts);

        return Response.json({
            success: true,
            count: templates.length,
            message: `Successfully generated ${templates.length} tasks.`
        });
    } catch (err) {
        console.error('Task Generation Error:', err);
        return Response.json({ error: err.message }, { status: 500 });
    }
}

/**
 * Compute scale ratio based on field properties and template unit type.
 * @param {Object} template - Process template row
 * @param {Object} field - Field row with area_total / perimeter
 * @returns {number} scale ratio (defaults to 1.0)
 */
function computeScaleRatio(template, field) {
    const unitName = (template.unit_name || '').toLowerCase();
    const unitType = (template.unit_type || '').toLowerCase();
    const unitValue = parseFloat(template.unit_value) || 1;

    let ratio = 1.0;

    if (unitName.includes('m2') || unitName.includes('面積') || unitType.includes('面積')) {
        ratio = (field.area_total || 0) / unitValue;
    } else if (unitName.includes('m') || unitName.includes('長') || unitType.includes('長')) {
        ratio = (field.perimeter || 0) / unitValue;
    }

    return (ratio > 0 && isFinite(ratio)) ? ratio : 1.0;
}
