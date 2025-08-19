#!/usr/bin/python3
import os

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><body><h1>Environment Variables</h1><hr>")
for key, val in sorted(os.environ.items()):
    print("<b>{}</b>: {}<br>".format(key, val))
print("</body></html>")
