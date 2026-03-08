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

        const allowedTables = ['work_master', 'material_master', 'equipment_master', 'varieties_master', 'season_plans', 'fields', 'process_master'];

        // Map legacy types to table names
        let tableName = type;
        if (type === 'work') tableName = 'work_master';
        if (type === 'material') tableName = 'material_master';
        if (type === 'equip') tableName = 'equipment_master';

        if (!allowedTables.includes(tableName)) {
            return Response.json({ success: false, error: "Unknown table: " + tableName }, { status: 400 });
        }

        // Custom mappers for legacy Japanese headers
        if (tableName === 'work_master' && (data[0]['大分類'] || data[0]['major_category'])) {
            query = 'INSERT INTO work_master (major_category, mid_category, minor_category) VALUES (?, ?, ?)';
            paramsList = data.map(row => [
                row['大分類'] || row['major_category'] || '',
                row['中分類'] || row['mid_category'] || '',
                row['小分類'] || row['minor_category'] || ''
            ]);
        } else if (tableName === 'material_master' && (data[0]['大分類'] || data[0]['major_category'])) {
            query = 'INSERT INTO material_master (major_category, mid_category, product_name, description) VALUES (?, ?, ?, ?)';
            paramsList = data.map(row => [
                row['大分類'] || row['major_category'] || '',
                row['中分類'] || row['mid_category'] || '',
                row['商品名'] || row['product_name'] || '',
                row['解説'] || row['description'] || ''
            ]);
        } else if (tableName === 'equipment_master' && (data[0]['区分'] || data[0]['category'])) {
            query = 'INSERT INTO equipment_master (category, name) VALUES (?, ?)';
            paramsList = data.map(row => [
                row['区分'] || row['category'] || '',
                row['名称'] || row['name'] || ''
            ]);
        } else {
            // Generic import for any table based on the CSV headers (must match DB columns)
            // Filter out 'id' if present, to let AUTOINCREMENT work (usually master import drops and replaces)
            const keys = Object.keys(data[0]).filter(k => k !== 'id' && k !== '');
            if (keys.length === 0) {
                return Response.json({ success: false, error: "Empty headers" }, { status: 400 });
            }
            const columns = keys.join(', ');
            const placeholders = keys.map(() => '?').join(', ');
            query = `INSERT INTO ${tableName} (${columns}) VALUES (${placeholders})`;
            paramsList = data.map(row => keys.map(k => row[k]));
        }

        // Clear existing data for master tables to fully sync from spreadsheet
        // Be careful: foreign keys are not strictly enforced here, but this enables spreadsheet-driven workflow.
        await db.prepare(`DELETE FROM ${tableName}`).run();

        const stmts = paramsList.map(params => db.prepare(query).bind(...params));

        // Execute inserts in batch
        await db.batch(stmts);

        return Response.json({ success: true, message: `${data.length}件のデータをインポートしました` });
    } catch (err) {
        return Response.json({ success: false, error: err.message }, { status: 500 });
    }
}
