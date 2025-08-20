#!/usr/bin/python3
import os, http.cookies

cookies = http.cookies.SimpleCookie(os.environ.get("HTTP_COOKIE", ""))
name = cookies["session_name"].value if "session_name" in cookies else ""

print("Content-type: text/html\n")
print(f"""<!DOCTYPE html>
<html>
<head><title>Python Sessions Page 2</title></head>
<body>
<h1>Python Sessions Page 2</h1>
<p>Name: {name}</p>
<p><a href="/cgi-bin/py-sessions-1.py">Session Page 1</a></p>
<p><a href="/py-cgiform.html">Python CGI Form</a></p>
<form method="POST" action="/cgi-bin/py-destroy-session.py">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>""")
