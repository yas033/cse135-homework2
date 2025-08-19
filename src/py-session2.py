#!/usr/bin/python3
import os

print("Cache-Control: no-cache")
print("Content-type: text/html\n")

name = None
if os.path.exists("/tmp/py_session.txt"):
    with open("/tmp/py_session.txt") as f:
        name = f.read().strip()

print("<html><body>")
print("<h1>Python Session Page 2</h1>")
if name:
    print("<p><b>Name:</b> {}</p>".format(name))
else:
    print("<p><b>Name:</b> Not set</p>")
print('<a href="/cgi-bin/page1.py">Back to Page 1</a><br>')
print('<a href="/cgi-bin/destroy.py">Destroy Session</a><br>')
print("</body></html>")
