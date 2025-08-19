#!/usr/bin/python3
import sys, os

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><body><h1>General Request Echo</h1><hr>")
print("<p><b>HTTP Protocol:</b> {}</p>".format(os.environ.get("SERVER_PROTOCOL", "")))
print("<p><b>HTTP Method:</b> {}</p>".format(os.environ.get("REQUEST_METHOD", "")))
print("<p><b>Query String:</b> {}</p>".format(os.environ.get("QUERY_STRING", "")))

length = int(os.environ.get("CONTENT_LENGTH", 0))
body = sys.stdin.read(length)
print("<p><b>Message Body:</b> {}</p>".format(body))
print("</body></html>")
