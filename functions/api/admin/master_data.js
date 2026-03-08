export async function onRequest(context) {
    const { env } = context;
    try {
        const { results: work } = await env.DB.prepare('SELECT * FROM work_master').all();
        const { results: material } = await env.DB.prepare('SELECT * FROM material_master').all();
        const { results: equip } = await env.DB.prepare('SELECT * FROM equipment_master').all();

        return Response.json({ work, material, equip });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}
