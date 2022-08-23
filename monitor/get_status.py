import requests
import time

from config import address

url = f"https://api.mcsrvstat.us/2/{address}"
while True:
    resp = requests.get(url).json()
    resp.pop("icon")
    t = time.localtime()
    t = time.strftime("%H:%M:%S", t)
    print(t, resp.get("online"))
    time.sleep(60)