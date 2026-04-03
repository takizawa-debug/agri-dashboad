// Toggle task completion status
export async function onRequestPost({ request, env }) {
    try {
        const { task_ref } = await request.json();
        if (!task_ref) return Response.json({ error: 'task_ref required' }, { status: 400 });

        // Check current status
        const existing = await env.DB.prepare(
            'SELECT id FROM task_status WHERE task_ref = ?'
        ).bind(task_ref).first();

        if (existing) {
            // Toggle off - delete
            await env.DB.prepare('DELETE FROM task_status WHERE task_ref = ?').bind(task_ref).run();
            return Response.json({ success: true, is_done: false });
        } else {
            // Toggle on - insert
            await env.DB.prepare(
                "INSERT INTO task_status (task_ref, completed_at) VALUES (?, datetime('now'))"
            ).bind(task_ref).run();
            return Response.json({ success: true, is_done: true });
        }
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}

// Get all completed task refs
export async function onRequestGet({ env }) {
    try {
        const { results } = await env.DB.prepare('SELECT task_ref, completed_at FROM task_status').all();
        return Response.json({ data: results });
    } catch (err) {
        return Response.json({ error: err.message, data: [] }, { status: 500 });
    }
}
