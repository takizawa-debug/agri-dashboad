export async function onRequestPost(context) {
    const { request, env } = context;
    try {
        const payload = await request.json();
        const taskId = payload.taskId; // The ID string or int

        if (!taskId) {
            return Response.json({ success: false, error: "Task ID missing" }, { status: 400 });
        }

        await env.DB.prepare(`
            UPDATE tasks SET 
                status = '完了',
                actual_hours = ?,
                actual_material_qty = ?,
                worker_name = ?,
                memo = ?
            WHERE id = ?
        `).bind(
            payload.actualHours || null,
            payload.actualMaterialQty || null,
            payload.workerName || '',
            payload.memo || '',
            taskId
        ).run();

        return Response.json({ success: true, message: '作業記録を保存しました' });
    } catch (err) {
        return Response.json({ success: false, error: err.message }, { status: 500 });
    }
}
