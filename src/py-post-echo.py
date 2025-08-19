#!/usr/bin/python3
import sys, os, urllib.parse

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><body><h1>POST Echo</h1><hr>")
length = int(os.environ.get("CONTENT_LENGTH", 0))
post_data = sys.stdin.read(length)

params = urllib.parse.parse_qs(post_data)
print("<b>Message Body:</b><br><ul>")
for k, v in params.items():
    print("<li>{} = {}</li>".format(k, v[0]))
print("</ul></body></html>")
