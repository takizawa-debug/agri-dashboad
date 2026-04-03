export async function onRequestPost({ request, env }) {
    try {
        const { sourceVariety, targetVariety } = await request.json();

        if (!sourceVariety || !targetVariety) {
            return Response.json({ error: 'sourceVariety and targetVariety are required' }, { status: 400 });
        }

        // 1. Fetch source records
        const { results: sourceItems } = await env.DB.prepare(
            `SELECT * FROM process_master WHERE variety_name = ?`
        ).bind(sourceVariety).all();

        // 2. Build batch: delete target, then insert copies
        const batchStmts = [
            env.DB.prepare(`DELETE FROM process_master WHERE variety_name = ?`).bind(targetVariety)
        ];

        if (sourceItems?.length) {
            const columns = Object.keys(sourceItems[0]).filter(k => k !== 'id' && k !== 'variety_name');
            const allColumns = [...columns, 'variety_name'];
            const placeholders = allColumns.map(() => '?').join(', ');
            const insertSQL = `INSERT INTO process_master (${allColumns.join(', ')}) VALUES (${placeholders})`;

            for (const item of sourceItems) {
                const values = columns.map(k => item[k]);
                values.push(targetVariety);
                batchStmts.push(env.DB.prepare(insertSQL).bind(...values));
            }
        }

        // 3. Execute as batch transaction
        await env.DB.batch(batchStmts);

        return Response.json({ success: true, message: '工程のコピーが完了しました' });
    } catch (error) {
        return Response.json({ error: error.message }, { status: 500 });
    }
}
