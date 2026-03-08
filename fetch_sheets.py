import urllib.request
import urllib.parse
import csv
import io
import json

sheet_id = '1mJfpw-4-OuydIaCq_6FUk_mFm16POkTn6xymi_v43_A'
sheets = [
    '工程マスタ：とうもろこし',
    '工程マスタ'
]

results = {}

for sheet in sheets:
    url = f"https://docs.google.com/spreadsheets/d/{sheet_id}/gviz/tq?tqx=out:csv&sheet={urllib.parse.quote(sheet)}"
    try:
        req = urllib.request.Request(url)
        with urllib.request.urlopen(req) as response:
            csv_data = response.read().decode('utf-8')
            reader = csv.reader(io.StringIO(csv_data))
            rows = list(reader)
            if rows:
                results[sheet] = {
                    'status': 'success',
                    'headers': rows[0][:15], # Show first 15 headers
                    'sample_row': rows[5][:15] if len(rows) > 5 else [],
                    'total_rows': len(rows)
                }
            else:
                results[sheet] = {'status': 'empty'}
    except urllib.error.HTTPError as e:
        results[sheet] = {'status': 'error', 'message': str(e)}

print(json.dumps(results, ensure_ascii=False, indent=2))
