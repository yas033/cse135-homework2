#!/usr/bin/python3
import cgi, http.cookies, os

print("Cache-Control: no-cache")
form = cgi.FieldStorage()
cookie = http.cookies.SimpleCookie(os.environ.get("HTTP_COOKIE"))

name = form.getvalue("username")
if name:
    with open("/tmp/py_session.txt", "w") as f:
        f.write(name)
    cookie["username"] = name

print("Content-type: text/html")
print(cookie.output())
print()

print("<html><body>")
print("<h1>Python Session Page 1</h1>")
if name:
    print("<p><b>Name:</b> {}</p>".format(name))
else:
    print("<p><b>Name:</b> Not set</p>")
print('<a href="/cgi-bin/page2.py">Session Page 2</a><br>')
print('<form method="POST" action="/cgi-bin/page1.py">')
print('<input type="text" name="username">')
print('<input type="submit" value="Set Name">')
print('</form>')
print("</body></html>")
