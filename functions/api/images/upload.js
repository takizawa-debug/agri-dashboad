// Upload image to R2 and return URL
export async function onRequestPost({ request, env }) {
    try {
        const formData = await request.formData();
        const file = formData.get('file');

        if (!file || !(file instanceof File)) {
            return Response.json({ error: 'No file uploaded' }, { status: 400 });
        }

        // Generate unique filename
        const ext = file.name.split('.').pop() || 'jpg';
        const key = `work-logs/${Date.now()}_${Math.random().toString(36).slice(2, 8)}.${ext}`;

        // Upload to R2
        await env.R2.put(key, file.stream(), {
            httpMetadata: { contentType: file.type }
        });

        return Response.json({ success: true, key, url: `/api/images/${key}` });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}
