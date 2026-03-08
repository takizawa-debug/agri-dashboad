const xlsx = require('xlsx');
const fs = require('fs');

const workbook = xlsx.readFile('/tmp/map_data.xlsx');
const sheet = workbook.Sheets['マイマップデータ'];

if (!sheet) {
    console.error("Sheet not found!");
    process.exit(1);
}

const csv = xlsx.utils.sheet_to_csv(sheet, { FS: '\t' });
fs.writeFileSync('map_data.tsv', csv);
console.log("Successfully extracted TSV");
