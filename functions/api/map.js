export async function onRequest({ env }) {
    try {
        const { results: fieldsRaw } = await env.DB.prepare(`
            SELECT f.*, fd.ridge_width, fd.ridge_gap, fd.row_count, fd.row_gap,
                   fd.plant_spacing, fd.total_ridge_count, fd.total_plant_count, fd.ridges_json
            FROM fields f
            LEFT JOIN field_designs fd ON f.name = fd.name
        `).all();

        const polygons = fieldsRaw.map(f => ({
            name: f.name,
            folder: f.folder_name,
            rawCoords: f.polygon_coords,
            repElev: f.rep_elev,
            area: f.area_total,
            perimeter: f.perimeter,
            totalPlantCount: f.total_plant_count || 0,
            totalRidgeCount: f.total_ridge_count || 0,
            ridgeWidth: f.ridge_width || 0,
            ridgeGap: f.ridge_gap || 0,
            rowCount: f.row_count || 0,
            plantSpacing: f.plant_spacing || 0,
            ridges: safeParseJSON(f.ridges_json, [])
        }));

        return Response.json({ polygons });
    } catch (err) {
        return Response.json({ error: err.message }, { status: 500 });
    }
}

function safeParseJSON(str, fallback) {
    if (!str) return fallback;
    try { return JSON.parse(str); } catch { return fallback; }
}
