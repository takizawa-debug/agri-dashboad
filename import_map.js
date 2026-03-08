const xlsx = require('xlsx');
const fs = require('fs');

const workbook = xlsx.readFile('/tmp/map_data.xlsx');
const sheet = workbook.Sheets['マイマップデータ'];

if (!sheet) {
    console.error("Sheet 'マイマップデータ' not found!");
    process.exit(1);
}

// Read options: raw false keeps formatted strings, defval sets empty cells to empty string
const data = xlsx.utils.sheet_to_json(sheet, { defval: '' });

let sql = "DELETE FROM fields;\n";
let fieldDesignsSql = "\nDELETE FROM field_designs;\n";

data.forEach((row, index) => {
    // Column keys from the TSV headers
    const folder = (row['レイヤー名 (Folder)'] || '').toString().trim().replace(/'/g, "''");
    const name = (row['名称 (Name)'] || '').toString().trim().replace(/'/g, "''");
    
    // Skip empty rows
    if (!name) return;

    const type = (row['形状 (Geometry Type)'] || '').toString().trim().replace(/'/g, "''");
    const rawCoords = (row['KML生座標 (Raw Coordinates)'] || '').toString().trim().replace(/'/g, "''");
    
    // The previous app logic uses standard "polygon_coords". We use rawCoords as it's cleaner.
    const coords = rawCoords.replace(/(\r\n|\n|\r)\s*/gm, ' '); 

    const repElev = parseFloat(row['代表標高 (m)']) || 0;
    const maxElev = parseFloat(row['最高標高 (m)']) || 0;
    const minElev = parseFloat(row['最低標高 (m)']) || 0;
    const elevDiff = parseFloat(row['高低差 (m)']) || 0;
    const slope = parseFloat(row['概算傾斜 (%)']) || 0;
    const aspect = parseFloat(row['傾斜方位角 (度)']) || 0;
    const area = parseFloat(row['面積 (㎡)']) || 0;
    const peri = parseFloat(row['外周 (m)']) || 0;
    
    let centroid = (row['代表座標 (Centroid)'] || '').toString().trim().replace(/'/g, "''");
    let notes = (row['説明 (Description)'] || '').toString().trim().replace(/'/g, "''");

    sql += `INSERT INTO fields (folder_name, name, geometry_type, polygon_coords, rep_elev, max_elev, min_elev, elev_diff, slope, aspect, area_total, perimeter, centroid, notes, location_url) VALUES ('${folder}', '${name}', '${type}', '${coords}', ${repElev}, ${maxElev}, ${minElev}, ${elevDiff}, ${slope}, ${aspect}, ${area}, ${peri}, '${centroid}', '${notes}', NULL);\n`;

    // Add corresponding field_designs entries for polygons (or anything that needs simulation)
    if (type === 'Polygon' && folder === '耕作地') {
        fieldDesignsSql += `INSERT INTO field_designs (name, ridge_width, ridge_gap, row_count, row_gap, plant_spacing, total_ridge_count, total_plant_count, ridges_json) VALUES ('${name}', 60, 50, 1, 0, 35, 0, 0, NULL);\n`;
    }
});

sql += fieldDesignsSql;

fs.writeFileSync('import_map.sql', sql);
console.log('Successfully generated import_map.sql with ' + data.length + ' rows parsed.');
