export async function onRequestPost({ request, env }) {
    try {
        const { sourceVariety, targetVariety } = await request.json();

        if (!sourceVariety || !targetVariety) {
            return Response.json({ error: 'sourceVariety and targetVariety are required' }, { status: 400 });
        }

        // 1. Delete all existing process_master records for the target variety
        const deleteStmt = env.DB.prepare(`DELETE FROM process_master WHERE variety_name = ?`).bind(targetVariety);

        // 2. Fetch all process_master records for the source variety
        const { results: sourceItems } = await env.DB.prepare(`SELECT * FROM process_master WHERE variety_name = ?`).bind(sourceVariety).all();

        const batchStmts = [deleteStmt];

        // 3. Prepare insert statements for each source item, assigning the target variety name
        if (sourceItems && sourceItems.length > 0) {
            // omit 'id' so sqlite autoincrements it
            const columnsToCopy = Object.keys(sourceItems[0]).filter(k => k !== 'id' && k !== 'variety_name');

            for (const item of sourceItems) {
                const values = [];
                const placeholders = [];
                const insertKeys = [];

                columnsToCopy.forEach(key => {
                    insertKeys.push(key);
                    values.push(item[key]);
                    placeholders.push('?');
                });

                // Override variety_name
                insertKeys.push('variety_name');
                values.push(targetVariety);
                placeholders.push('?');

                const insertStmt = env.DB.prepare(
                    `INSERT INTO process_master (${insertKeys.join(', ')}) VALUES (${placeholders.join(', ')})`
                ).bind(...values);

                batchStmts.push(insertStmt);
            }
        }

        // 4. Execute all queries as a batch transaction
        await env.DB.batch(batchStmts);

        return Response.json({ success: true, message: '工程のコピーが完了しました' });
    } catch (error) {
        return Response.json({ error: error.message }, { status: 500 });
    }
}
