import urllib.request
import urllib.parse
import csv
import io
import re
import json

sheet_id = '1mJfpw-4-OuydIaCq_6FUk_mFm16POkTn6xymi_v43_A'
sheets = [
    '作業マスタ',
    '品目・品種マスタ',
    '農機具マスタ',
    '資材マスタ',
    '時期計画マスタ',
    '圃場設計マスタ',
    'マイマップデータ',
    '工程マスタ',
    '工程マスタ：とうもろこし'
]

def clean_sql_str(val):
    if not val:
        return 'NULL'
    val = val.replace("'", "''")
    return f"'{val}'"
    
def clean_sql_num(val):
    if not val:
        return 'NULL'
    val = val.replace(',', '') # remove commas from numbers like 1,000
    try:
        return str(float(val))
    except ValueError:
        return 'NULL'

def generate_sql():
    sql_statements = []

    for sheet in sheets:
        url = f"https://docs.google.com/spreadsheets/d/{sheet_id}/gviz/tq?tqx=out:csv&sheet={urllib.parse.quote(sheet)}"
        try:
            req = urllib.request.Request(url)
            with urllib.request.urlopen(req) as response:
                csv_data = response.read().decode('utf-8')
                reader = csv.reader(io.StringIO(csv_data))
                rows = list(reader)
                
                if not rows or len(rows) < 2:
                    continue

                if sheet == '作業マスタ':
                    for row in rows[1:]:
                        if len(row) >= 4 and row[0]:
                            sql_statements.append(f"INSERT INTO work_master (major_category, mid_category, minor_category) VALUES ({clean_sql_str(row[1])}, {clean_sql_str(row[2])}, {clean_sql_str(row[3])});")
                
                elif sheet == '品目・品種マスタ':
                    for row in rows[1:]:
                        if len(row) >= 8 and row[0] and row[2]: # Ensure variety_name (row[2]) is present
                            sql_statements.append(f"INSERT INTO varieties_master (id, item_name, variety_name, crop_type, seed_ratio, yield_ratio, unit, auto_name) VALUES ({clean_sql_str(row[0])}, {clean_sql_str(row[1])}, {clean_sql_str(row[2])}, {clean_sql_str(row[3])}, {clean_sql_num(row[4])}, {clean_sql_num(row[5])}, {clean_sql_str(row[6])}, {clean_sql_str(row[7])});")
                
                elif sheet == '農機具マスタ':
                    for row in rows[1:]:
                        if len(row) >= 3 and row[0] and row[1]:
                            sql_statements.append(f"INSERT INTO equipment_master (category, name) VALUES ({clean_sql_str(row[1])}, {clean_sql_str(row[2])});")
                            
                elif sheet == '資材マスタ':
                    for row in rows[1:]:
                        if len(row) >= 5 and row[0] and row[1]:
                            sql_statements.append(f"INSERT INTO material_master (major_category, mid_category, product_name, description) VALUES ({clean_sql_str(row[1])}, {clean_sql_str(row[2])}, {clean_sql_str(row[3])}, {clean_sql_str(row[4])});")
                            
                elif sheet == '時期計画マスタ':
                    for row in rows[1:]:
                        if len(row) >= 11 and row[0] and row[1]: 
                             sql_statements.append(f"INSERT INTO season_plans (id, variety_name, nursery_location, field_name, base_date, base_work, harvest_date, seed_count, seedling_count, yield_amount, yield_unit) VALUES ({clean_sql_str(row[0])}, {clean_sql_str(row[1])}, {clean_sql_str(row[2])}, {clean_sql_str(row[3])}, {clean_sql_str(row[4].replace('/', '-'))}, {clean_sql_str(row[5])}, {clean_sql_str(row[6].replace('/', '-'))}, {clean_sql_num(row[7])}, {clean_sql_num(row[8])}, {clean_sql_num(row[9])}, {clean_sql_str(row[10])});")
                
                elif sheet == '圃場設計マスタ':
                     for row in rows[1:]:
                        if len(row) >= 9 and row[0] and row[1]:
                            # ridges are row[9] onwards
                            ridges = [r for r in row[9:] if r]
                            ridges_json = json.dumps(ridges, ensure_ascii=False) if ridges else '[]'
                            sql_statements.append(f"INSERT INTO field_designs (name, ridge_width, ridge_gap, row_count, row_gap, plant_spacing, total_ridge_count, total_plant_count, ridges_json) VALUES ({clean_sql_str(row[1])}, {clean_sql_num(row[2])}, {clean_sql_num(row[3])}, {clean_sql_num(row[4])}, {clean_sql_num(row[5])}, {clean_sql_num(row[6])}, {clean_sql_num(row[7])}, {clean_sql_num(row[8])}, {clean_sql_str(ridges_json)});")

                elif sheet == 'マイマップデータ':
                    for row in rows[1:]:
                        if len(row) >= 15 and row[1]:
                            sql_statements.append(f"INSERT INTO fields (folder_name, name, geometry_type, polygon_coords, rep_elev, max_elev, min_elev, elev_diff, slope, aspect, area_total, perimeter, centroid) VALUES ({clean_sql_str(row[0])}, {clean_sql_str(row[1])}, {clean_sql_str(row[3])}, {clean_sql_str(row[4])}, {clean_sql_num(row[5])}, {clean_sql_num(row[6])}, {clean_sql_num(row[7])}, {clean_sql_num(row[8])}, {clean_sql_num(row[9])}, {clean_sql_num(row[10])}, {clean_sql_num(row[11])}, {clean_sql_num(row[12])}, {clean_sql_str(row[14])});")
                
                elif sheet.startswith('工程マスタ'):
                    crop_name = sheet.replace('工程マスタ：', '') if '：' in sheet else '汎用'
                    # Assuming row 4 (idx 3) is task_name, row 8 (idx 7) is relation ratio, row 6 (idx 5) is day_offset
                    # Because crop process layout is complex (gantt header), using approximate indices for now based on sample
                    if len(rows) > 5:
                        for row in rows[2:]: # skip header sections
                             if len(row) >= 8 and row[2]: # task name available
                                 task_name = row[2]
                                 relation = row[3] if len(row) > 3 else '1'
                                 offset = row[6] if len(row) > 6 else '0' # base day offset assumption
                                 
                                 # We are skipping some complex processing for this demo script
                                 sql_statements.append(f"INSERT INTO crop_processes (crop_name, task_name, relation_ratio, day_offset) VALUES ({clean_sql_str(crop_name)}, {clean_sql_str(task_name)}, {clean_sql_num(relation)}, {clean_sql_num(offset)});")

        except Exception as e:
            print(f"Error processing {sheet}: {e}")

    with open('import.sql', 'w', encoding='utf-8') as f:
        f.write('\n'.join(sql_statements))
        
if __name__ == '__main__':
    generate_sql()
    print("Generated import.sql successfully.")
