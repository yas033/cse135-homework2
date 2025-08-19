#!/usr/bin/env python3
import http.cookies, time

cookie = http.cookies.SimpleCookie()
cookie["session_name"] = ""
cookie["session_name"]["path"] = "/"
cookie["session_name"]["expires"] = time.strftime("%a, %d-%b-%Y %H:%M:%S GMT", time.gmtime(time.time()-3600))

print("Content-type: text/html")
print(cookie.output())
print()
print("""<!DOCTYPE html>
<html>
<head><title>Session Destroyed</title></head>
<body>
<h1>Session Destroyed</h1>
<p><a href="/py-cgiform.html">Back to Python CGI Form</a></p>
<p><a href="/cgi-bin/py-sessions-1.py">Back to Page 1</a></p>
<p><a href="/cgi-bin/py-sessions-2.py">Back to Page 2</a></p>
</body>
</html>""")
