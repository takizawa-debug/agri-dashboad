export async function onRequestPost(context) {
    const { request, env } = context;
    try {
        const payload = await request.json();
        const taskId = payload.taskId; // The ID string or int

        if (!taskId) {
            return Response.json({ success: false, error: "Task ID missing" }, { status: 400 });
        }

        await env.DB.prepare(`
            INSERT INTO tasks (
                generated_task_id,
                status,
                actual_hours,
                actual_material_qty,
                worker_name,
                memo,
                crop_name,
                major_category,
                mid_category,
                minor_category
            ) VALUES (?, '完了', ?, ?, ?, ?, ?, ?, ?, ?)
            ON CONFLICT(generated_task_id) DO UPDATE SET
                status = '完了',
                actual_hours = excluded.actual_hours,
                actual_material_qty = excluded.actual_material_qty,
                worker_name = excluded.worker_name,
                memo = excluded.memo
        `).bind(
            taskId,
            payload.actualHours !== undefined ? payload.actualHours : null,
            payload.actualMaterialQty !== undefined ? payload.actualMaterialQty : null,
            payload.workerName || '',
            payload.memo || '',
            payload.cropName || '',
            payload.majorCat || '',
            payload.midCat || '',
            payload.minorCat || ''
        ).run();

        return Response.json({ success: true, message: '作業記録を保存しました' });
    } catch (err) {
        return Response.json({ success: false, error: err.message }, { status: 500 });
    }
}
