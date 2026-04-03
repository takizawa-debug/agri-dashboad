// Serve images from R2 - catch-all route for /api/images/*
export async function onRequest({ request, env, params }) {
    const key = params.path.join('/');

    if (request.method === 'DELETE') {
        await env.R2.delete(key);
        return Response.json({ success: true });
    }

    // GET: serve the image
    const object = await env.R2.get(key);
    if (!object) {
        return new Response('Not Found', { status: 404 });
    }

    const headers = new Headers();
    headers.set('Content-Type', object.httpMetadata?.contentType || 'image/jpeg');
    headers.set('Cache-Control', 'public, max-age=31536000');

    return new Response(object.body, { headers });
}
