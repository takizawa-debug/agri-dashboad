import urllib.request
import re
import csv
from io import StringIO
import traceback

SPREADSHEET_ID = '1mJfpw-4-OuydIaCq_6FUk_mFm16POkTn6xymi_v43_A'
HTML_URL = f'https://docs.google.com/spreadsheets/d/{SPREADSHEET_ID}/htmlview'

def get_sheet_gids():
    req = urllib.request.Request(HTML_URL)
    with urllib.request.urlopen(req) as response:
        html = response.read().decode('utf-8')
        
    # Match JSON-like or JS object structures for sheet names and gids
    matches = re.findall(r'\{name:\s*\"(.*?)\",\s*gid:\s*\"(.*?)\"\}', html)
    if not matches:
         matches = re.findall(r'name: \"(.*?)\".*?gid: \"(.*?)\"', html)
         
    return [(name, gid) for name, gid in matches if name.startswith('工程マスタ：')]

def clean_val(v):
    if not v:
        return 'NULL'
    v = str(v).strip().replace("'", "''")
    
    # Try parsing as float if it's supposed to be numeric
    try:
        # Check if it's just a number
        float_val = float(v)
        return str(float_val)
    except ValueError:
        return f"'{v}'"

def parse_sheet(name, gid):
    url = f'https://docs.google.com/spreadsheets/d/{SPREADSHEET_ID}/export?format=csv&gid={gid}'
    req = urllib.request.Request(url)
    with urllib.request.urlopen(req) as response:
        content = response.read().decode('utf-8')
        
    reader = csv.reader(StringIO(content))
    rows = list(reader)
    
    if len(rows) < 4:
        print(f"Skipping {name}, not enough rows.")
        return []

    # Row 1 (index 1) Col 0 has the variety name: e.g. "とうもろこし_プレミアム味来_早"
    variety_name = rows[1][0].strip()
    if not variety_name:
        variety_name = name.replace("工程マスタ：", "").strip()

    sql_statements = []
    
    # Data starts at row 4 (index 4)
    for i in range(4, len(rows)):
        row = rows[i]
        
        # Stop if the row is entirely empty or missing base features
        if len(row) < 4 or not "".join(row).strip():
            continue
            
        # Extract columns based on known schema:
        # 0. 起算日 -> base_day_offset
        # 1. 起算区分 -> timing_type
        # 2. 頻度 -> frequency
        # 3. 作業・大区分 -> work_major
        # 4. 作業・中区分 -> work_mid
        # 5. 作業・小区分 -> work_minor
        # 6. 作業詳細 -> work_details
        # 7. 単位区分 -> unit_type
        # 8. 単位あたりの工数 (1: Value) -> unit_value (col 8)
        # 9. 単位あたりの工数 (2: Unit) -> unit_name (col 9)
        # 10. 単位あたりの工数 (3: Effort) -> effort_value (col 10)
        # 11. 単位あたりの工数 (4: Time Unit) -> effort_unit (col 11)
        # 12. 空欄?
        # 13. 資材・大区分 -> material_major
        # 14. 資材・中区分 -> material_mid
        # 15. 資材・商品名称 -> material_name
        # 16. 解説 -> material_desc
        # 17. 数量 -> material_qty
        # 18. 単位 -> material_unit
        # 19. 農機具・区分 -> equipment_category
        # 20. 農機具・名称 -> equipment_name
        # 21. 備考 -> notes
        
        # Pad row to avoid index errors
        row += [''] * (25 - len(row))
        
        base_day_offset = clean_val(row[0])
        timing_type = clean_val(row[1])
        frequency = clean_val(row[2])
        work_major = clean_val(row[3])
        work_mid = clean_val(row[4])
        work_minor = clean_val(row[5])
        work_details = clean_val(row[6])
        unit_type = clean_val(row[7])
        unit_value = clean_val(row[8])
        unit_name = clean_val(row[9])
        effort_value = clean_val(row[10])
        effort_unit = clean_val(row[11])
        
        material_major = clean_val(row[13])
        material_mid = clean_val(row[14])
        material_name = clean_val(row[15])
        material_desc = clean_val(row[16])
        material_qty = clean_val(row[17])
        material_unit = clean_val(row[18])
        equipment_category = clean_val(row[19])
        equipment_name = clean_val(row[20])
        notes = clean_val(row[21])
        
        sql = f"""INSERT INTO process_master (
            variety_name, base_day_offset, timing_type, frequency, 
            work_major, work_mid, work_minor, work_details, 
            unit_type, unit_value, unit_name, effort_value, effort_unit, 
            material_major, material_mid, material_name, material_desc, 
            material_qty, material_unit, equipment_category, equipment_name, notes
        ) VALUES (
            '{variety_name}', {base_day_offset}, {timing_type}, {frequency},
            {work_major}, {work_mid}, {work_minor}, {work_details},
            {unit_type}, {unit_value}, {unit_name}, {effort_value}, {effort_unit},
            {material_major}, {material_mid}, {material_name}, {material_desc},
            {material_qty}, {material_unit}, {equipment_category}, {equipment_name}, {notes}
        );"""
        
        sql_statements.append(sql)
        
    return sql_statements

def main():
    sheets = get_sheet_gids()
    print(f"Found {len(sheets)} '工程マスタ：〇〇' sheets.")
    
    all_sql = ["DELETE FROM process_master;\n"]
    
    for name, gid in sheets:
        print(f"Processing {name} (GID: {gid})...")
        try:
            sqls = parse_sheet(name, gid)
            all_sql.extend(sqls)
            print(f"  -> Generated {len(sqls)} statements.")
        except Exception as e:
            print(f"  -> Error processing {name}: {e}")
            traceback.print_exc()

    with open('import_process_master.sql', 'w', encoding='utf-8') as f:
        f.write("\n".join(all_sql))
        
    print(f"Done! Wrote {len(all_sql)-1} statements to import_process_master.sql")

if __name__ == '__main__':
    main()
