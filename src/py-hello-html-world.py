#!/usr/bin/python3
import cgi, os, datetime

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><head><title>Hello Python</title></head><body>")
print("<h1>Hello Python CGI World</h1>")
print("<p>This page was generated with Python!</p>")
print("<p>Current Time: {}</p>".format(datetime.datetime.now()))
print("<p>Your IP Address: {}</p>".format(os.environ["REMOTE_ADDR"]))
print("</body></html>")
