export async function onRequest(context) {
    const { request, env } = context;

    if (request.method !== 'POST') {
        return Response.json({ error: 'Method not allowed' }, { status: 405 });
    }

    try {
        const body = await request.json();
        const { name, ridge_width, ridge_gap, row_count, plant_spacing, total_plant_count } = body;

        if (!name) {
            return Response.json({ error: 'Name is required' }, { status: 400 });
        }

        // Check if field design exists
        const { results } = await env.DB.prepare(`SELECT id FROM field_designs WHERE name = ?`).bind(name).all();

        let result;
        if (results.length > 0) {
            // Update
            const id = results[0].id;
            result = await env.DB.prepare(`
                UPDATE field_designs 
                SET ridge_width = ?, ridge_gap = ?, row_count = ?, plant_spacing = ?, total_plant_count = ?
                WHERE id = ?
            `).bind(ridge_width, ridge_gap, row_count, plant_spacing, total_plant_count, id).run();
        } else {
            // Insert
            result = await env.DB.prepare(`
                INSERT INTO field_designs (name, ridge_width, ridge_gap, row_count, plant_spacing, total_plant_count)
                VALUES (?, ?, ?, ?, ?, ?)
            `).bind(name, ridge_width, ridge_gap, row_count, plant_spacing, total_plant_count).run();
        }

        return Response.json({ success: true, result });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}
