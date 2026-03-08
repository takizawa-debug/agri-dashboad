const fs = require('fs');
const file = '/Users/takizawahiroki/Desktop/農業工程管理ver2.0/cf-agri-dashboard/public/admin.html';
let html = fs.readFileSync(file, 'utf8');

html = html.replace(/item\.id/g, "item.name");

fs.writeFileSync(file, html);
