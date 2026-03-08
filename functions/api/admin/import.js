export async function onRequestPost(context) {
    const { request, env } = context;
    try {
        const payload = await request.json();
        const { type, data } = payload;

        if (!type || !data || !Array.isArray(data)) {
            return Response.json({ success: false, error: "Invalid payload format" }, { status: 400 });
        }

        const db = env.DB;
        let query = '';
        let paramsList = [];

        // Very basic mapping assuming the CSV columns exactly match the fields we care about.
        // Or we map them dynamically based on headers. Here we just expect specific fields from frontend.
        if (type === 'work') {
            query = 'INSERT INTO work_master (major_category, mid_category, minor_category) VALUES (?, ?, ?)';
            paramsList = data.map(row => [
                row['大分類'] || row['major_category'] || '',
                row['中分類'] || row['mid_category'] || '',
                row['小分類'] || row['minor_category'] || ''
            ]);
        } else if (type === 'material') {
            query = 'INSERT INTO material_master (major_category, mid_category, product_name, description) VALUES (?, ?, ?, ?)';
            paramsList = data.map(row => [
                row['大分類'] || row['major_category'] || '',
                row['中分類'] || row['mid_category'] || '',
                row['商品名'] || row['product_name'] || '',
                row['解説'] || row['description'] || ''
            ]);
        } else if (type === 'equip') {
            query = 'INSERT INTO equipment_master (category, name) VALUES (?, ?)';
            paramsList = data.map(row => [
                row['区分'] || row['category'] || '',
                row['名称'] || row['name'] || ''
            ]);
        } else {
            return Response.json({ success: false, error: "Unknown type" }, { status: 400 });
        }

        // Ideally we would delete old records or use batching
        // For simplicity, we clear and insert. 
        // WARNING: Clearing might break existing relationships if IDs are hardcoded, but this is master data import.
        if (type === 'work') await db.prepare('DELETE FROM work_master').run();
        if (type === 'material') await db.prepare('DELETE FROM material_master').run();
        if (type === 'equip') await db.prepare('DELETE FROM equipment_master').run();

        const stmts = paramsList.map(params => db.prepare(query).bind(...params));

        // Execute inserts in batch
        await db.batch(stmts);

        return Response.json({ success: true, message: `${data.length}件のデータをインポートしました` });
    } catch (err) {
        return Response.json({ success: false, error: err.message }, { status: 500 });
    }
}
