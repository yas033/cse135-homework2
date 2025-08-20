#!/usr/bin/python3
import os, http.cookies

cookies = http.cookies.SimpleCookie(os.environ.get("HTTP_COOKIE", ""))
name = cookies["session_name"].value if "session_name" in cookies else ""

print("Content-type: text/html")
print()

print("<!DOCTYPE html>")
print("<html>")
print("<head><title>Python Sessions Page 2</title></head>")
print("<body>")
print("<h1>Python Sessions Page 2</h1>")
print(f"<p>Name: {name}</p>")
print('<p><a href="/cgi-bin/py-sessions-1.py">Session Page 1</a></p>')
print('<p><a href="/py-cgiform.html">Python CGI Form</a></p>')
print('<form method="POST" action="/cgi-bin/py-destroy-session.py">')
print('  <input type="submit" value="Destroy Session">')
print('</form>')
print("</body>")
print("</html>")
