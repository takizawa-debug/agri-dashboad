// Legacy header mappings for Japanese CSV imports
const HEADER_MAPS = {
    work_master: {
        columns: ['major_category', 'mid_category', 'minor_category'],
        detect: row => row['大分類'] || row['major_category'],
        map: row => [
            row['大分類'] || row['major_category'] || '',
            row['中分類'] || row['mid_category'] || '',
            row['小分類'] || row['minor_category'] || ''
        ]
    },
    material_master: {
        columns: ['major_category', 'mid_category', 'product_name', 'description'],
        detect: row => row['大分類'] || row['major_category'],
        map: row => [
            row['大分類'] || row['major_category'] || '',
            row['中分類'] || row['mid_category'] || '',
            row['商品名'] || row['product_name'] || '',
            row['解説'] || row['description'] || ''
        ]
    },
    equipment_master: {
        columns: ['category', 'name'],
        detect: row => row['区分'] || row['category'],
        map: row => [
            row['区分'] || row['category'] || '',
            row['名称'] || row['name'] || ''
        ]
    }
};

// Legacy type aliases
const TYPE_ALIASES = { work: 'work_master', material: 'material_master', equip: 'equipment_master' };

const ALLOWED_TABLES = [
    'work_master', 'material_master', 'equipment_master',
    'varieties_master', 'season_plans', 'fields', 'process_master'
];

export async function onRequestPost({ request, env }) {
    try {
        const { type, data } = await request.json();

        if (!type || !Array.isArray(data) || data.length === 0) {
            return Response.json({ success: false, error: 'Invalid payload format' }, { status: 400 });
        }

        const tableName = TYPE_ALIASES[type] || type;

        if (!ALLOWED_TABLES.includes(tableName)) {
            return Response.json({ success: false, error: `Unknown table: ${tableName}` }, { status: 400 });
        }

        // Build INSERT query and params
        const { query, paramsList } = buildInsertQuery(tableName, data);

        // Clear existing data before import
        await clearExistingData(env.DB, tableName, data);

        // Execute batch insert
        const stmts = paramsList.map(params => env.DB.prepare(query).bind(...params));
        await env.DB.batch(stmts);

        return Response.json({ success: true, message: `${data.length}件のデータをインポートしました` });
    } catch (err) {
        return Response.json({ success: false, error: err.message }, { status: 500 });
    }
}

/**
 * Build INSERT query and parameter arrays for the given table and data.
 * Uses legacy header mappings if applicable, otherwise does generic column mapping.
 */
function buildInsertQuery(tableName, data) {
    const headerMap = HEADER_MAPS[tableName];

    if (headerMap?.detect(data[0])) {
        const placeholders = headerMap.columns.map(() => '?').join(', ');
        return {
            query: `INSERT INTO ${tableName} (${headerMap.columns.join(', ')}) VALUES (${placeholders})`,
            paramsList: data.map(row => headerMap.map(row))
        };
    }

    // Generic: use CSV headers directly as column names (filter out 'id' for AUTOINCREMENT)
    const keys = Object.keys(data[0]).filter(k => k !== 'id' && k !== '');
    if (keys.length === 0) {
        throw new Error('Empty headers');
    }
    const placeholders = keys.map(() => '?').join(', ');
    return {
        query: `INSERT INTO ${tableName} (${keys.join(', ')}) VALUES (${placeholders})`,
        paramsList: data.map(row => keys.map(k => row[k]))
    };
}

/**
 * Clear existing data before import.
 * For process_master: only clear the varieties being imported.
 * For other tables: full truncate.
 */
async function clearExistingData(db, tableName, data) {
    if (tableName === 'process_master') {
        const varieties = [...new Set(data.map(row => row.variety_name).filter(Boolean))];
        if (varieties.length > 0) {
            const placeholders = varieties.map(() => '?').join(',');
            await db.prepare(`DELETE FROM process_master WHERE variety_name IN (${placeholders})`).bind(...varieties).run();
        }
    } else {
        await db.prepare(`DELETE FROM ${tableName}`).run();
    }
}
