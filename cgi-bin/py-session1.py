#!/usr/bin/env python3
import os, http.cookies, cgi

form = cgi.FieldStorage()
cookies = http.cookies.SimpleCookie(os.environ.get("HTTP_COOKIE", ""))
name = cookies["session_name"].value if "session_name" in cookies else ""

headers = []
headers.append("Content-Type: text/html")

# If a name was posted, set the cookie header
if "name" in form and form["name"].value:
    name = form["name"].value
    cookie = http.cookies.SimpleCookie()
    cookie["session_name"] = name
    cookie["session_name"]["path"] = "/"
    headers.append(cookie.output())

# Emit headers, then a single blank line
for h in headers:
    print(h)
print()

print(f"""<!DOCTYPE html>
<html>
<head><title>Python Sessions Page 1</title></head>
<body>
<h1>Python Sessions Page 1</h1>
<p>Name: {name}</p>
<p><a href="/cgi-bin/py-sessions-2.py">Session Page 2</a></p>
<p><a href="/py-cgiform.html">Python CGI Form</a></p>
<form method="POST" action="/cgi-bin/py-destroy-session.py">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>""")
