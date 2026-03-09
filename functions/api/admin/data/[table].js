export async function onRequest(context) {
    const { request, env, params } = context;
    const { table } = params;

    const ALLOWED_TABLES = [
        'work_master',
        'material_master',
        'equipment_master',
        'varieties_master',
        'season_plans',
        'field_designs',
        'fields',
        'process_master',
        'tasks'
    ];

    if (!ALLOWED_TABLES.includes(table)) {
        return Response.json({ error: 'Invalid table' }, { status: 400 });
    }

    try {
        if (request.method === 'GET') {
            let query = `SELECT * FROM ${table}`;
            if (table === 'fields') {
                query = `
                    SELECT f.*, 
                           fd.ridge_width, 
                           fd.ridge_gap AS ridge_distance, 
                           fd.row_count AS number_of_rows, 
                           fd.plant_spacing AS plant_distance, 
                           fd.total_plant_count AS max_plantable 
                    FROM fields f 
                    LEFT JOIN field_designs fd ON f.name = fd.name
                `;
            }
            const { results } = await env.DB.prepare(query).all();
            return Response.json({ data: results });
        }

        if (request.method === 'POST') {
            const body = await request.json();

            if (table === 'varieties_master') {
                const parts = [body.item_name, body.variety_name, body.crop_type].filter(p => typeof p === 'string' && p.trim() !== '');
                body.auto_name = parts.join('_');
            }

            // Generate UUID if ID is missing (especially for tables with TEXT PRIMARY KEY)
            if (!body.id) {
                body.id = crypto.randomUUID();
            }

            const keys = Object.keys(body);
            const values = Object.values(body);
            const placeholders = keys.map(() => '?').join(', ');

            const result = await env.DB.prepare(
                `INSERT INTO ${table} (${keys.join(', ')}) VALUES (${placeholders})`
            ).bind(...values).run();

            return Response.json({ success: true, result });
        }

        if (request.method === 'PUT') {
            const body = await request.json();
            const { id, ...updateFields } = body;

            if (!id) return Response.json({ error: 'ID is required for update' }, { status: 400 });

            if (table === 'varieties_master') {
                const parts = [body.item_name, body.variety_name, body.crop_type].filter(p => typeof p === 'string' && p.trim() !== '');
                updateFields.auto_name = parts.join('_');
            }

            const keys = Object.keys(updateFields);
            const values = Object.values(updateFields);

            const setClause = keys.map(k => `${k} = ?`).join(', ');
            const query = `UPDATE ${table} SET ${setClause} WHERE id = ?`;

            values.push(id);
            await env.DB.prepare(query).bind(...values).run();
            return Response.json({ success: true, message: 'Record updated' });
        }

        if (request.method === 'DELETE') {
            // Delete typically sends id in body or query param
            const url = new URL(request.url);
            let id = url.searchParams.get('id');

            if (!id) {
                const body = await request.json();
                id = body.id;
            }

            if (!id) return Response.json({ error: 'ID is required for deletion' }, { status: 400 });

            await env.DB.prepare(`DELETE FROM ${table} WHERE id = ?`).bind(id).run();
            return Response.json({ success: true, message: 'Record deleted' });
        }

        return Response.json({ error: 'Method not allowed' }, { status: 405 });

    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}
