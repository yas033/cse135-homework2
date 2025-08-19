#!/usr/bin/python3
import json, datetime, os

print("Cache-Control: no-cache")
print("Content-type: application/json\n")

msg = {
    "title": "Hello, Python!",
    "heading": "Hello, Python!",
    "message": "This page was generated with Python",
    "time": str(datetime.datetime.now()),
    "IP": os.environ["REMOTE_ADDR"]
}
print(json.dumps(msg))
