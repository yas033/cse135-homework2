#!/usr/bin/python3
import os

if os.path.exists("/tmp/py_session.txt"):
    os.remove("/tmp/py_session.txt")

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

print("<html><body>")
print("<h1>Session Destroyed</h1>")
print('<a href="/cgi-bin/page1.py">Back to Page 1</a>')
print("</body></html>")
