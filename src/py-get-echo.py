#!/usr/bin/python3
import os, urllib.parse

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><body><h1>GET Echo</h1><hr>")
query = os.environ.get("QUERY_STRING", "")
print("<b>Query String:</b> {}<br>".format(query))

params = urllib.parse.parse_qs(query)
for k, v in params.items():
    print("{} = {}<br>".format(k, v[0]))
print("</body></html>")
