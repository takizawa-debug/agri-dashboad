const fs = require('fs');
const file = '/Users/takizawahiroki/Desktop/農業工程管理ver2.0/cf-agri-dashboard/public/admin.html';
let html = fs.readFileSync(file, 'utf8');

html = html.replace(/inlineEditingId = \`field_rw_\$\{item.id\}\`/g, "inlineEditingId = 'field_rw_' + item.id");
html = html.replace(/inlineEditingId === \`field_rw_\$\{item.id\}\`/g, "inlineEditingId === 'field_rw_' + item.id");

html = html.replace(/inlineEditingId = \`field_rd_\$\{item.id\}\`/g, "inlineEditingId = 'field_rd_' + item.id");
html = html.replace(/inlineEditingId === \`field_rd_\$\{item.id\}\`/g, "inlineEditingId === 'field_rd_' + item.id");

html = html.replace(/inlineEditingId = \`field_row_\$\{item.id\}\`/g, "inlineEditingId = 'field_row_' + item.id");
html = html.replace(/inlineEditingId === \`field_row_\$\{item.id\}\`/g, "inlineEditingId === 'field_row_' + item.id");

html = html.replace(/inlineEditingId = \`field_pd_\$\{item.id\}\`/g, "inlineEditingId = 'field_pd_' + item.id");
html = html.replace(/inlineEditingId === \`field_pd_\$\{item.id\}\`/g, "inlineEditingId === 'field_pd_' + item.id");

fs.writeFileSync(file, html);
