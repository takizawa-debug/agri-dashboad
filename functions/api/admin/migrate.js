// Migration endpoint to ensure work_logs table has all required columns
export async function onRequest({ env }) {
    try {
        // Create table if not exists
        await env.DB.prepare(`
            CREATE TABLE IF NOT EXISTS work_logs (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                log_date TEXT NOT NULL,
                worker_name TEXT NOT NULL,
                crop_name TEXT,
                variety_name TEXT,
                work_description TEXT,
                memo TEXT,
                start_time TEXT,
                end_time TEXT,
                break_minutes INTEGER DEFAULT 0,
                image_urls TEXT,
                created_at TEXT DEFAULT (datetime('now'))
            )
        `).run();

        // Add columns if they don't exist (for existing tables)
        const migrations = [
            "ALTER TABLE work_logs ADD COLUMN start_time TEXT",
            "ALTER TABLE work_logs ADD COLUMN end_time TEXT",
            "ALTER TABLE work_logs ADD COLUMN break_minutes INTEGER DEFAULT 0",
            "ALTER TABLE work_logs ADD COLUMN image_urls TEXT",
            "ALTER TABLE work_logs ADD COLUMN task_ref TEXT"
        ];

        for (const sql of migrations) {
            try { await env.DB.prepare(sql).run(); } catch (e) { /* column already exists */ }
        }

        // Create task_status table
        await env.DB.prepare(`
            CREATE TABLE IF NOT EXISTS task_status (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                task_ref TEXT NOT NULL UNIQUE,
                completed_at TEXT DEFAULT (datetime('now'))
            )
        `).run();

        return Response.json({ success: true, message: 'Migration complete' });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}
