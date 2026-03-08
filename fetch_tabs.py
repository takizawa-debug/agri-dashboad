import urllib.request
import re
import json

sheet_id = '1mJfpw-4-OuydIaCq_6FUk_mFm16POkTn6xymi_v43_A'
url = f"https://docs.google.com/spreadsheets/d/{sheet_id}/htmlview"

req = urllib.request.Request(url)
with urllib.request.urlopen(req) as response:
    html = response.read().decode('utf-8')
    matches = re.findall(r'\{name:\s*"(.*?)"', html)
    print(json.dumps({'tabs': list(set(matches))}, ensure_ascii=False, indent=2))
