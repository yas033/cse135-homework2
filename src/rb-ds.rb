#!/usr/bin/env ruby
require "cgi"
require "cgi/cookie"

cgi = CGI.new
cookie = CGI::Cookie.new("session_name", "")
cookie.expires = Time.now - 3600
cookie.path = "/"

print cgi.header("type"=>"text/html", "cookie"=>[cookie])
puts <<HTML
<!DOCTYPE html>
<html>
<head><title>Session Destroyed</title></head>
<body>
<h1>Session Destroyed</h1>
<p><a href="/ruby-cgiform.html">Back to Ruby CGI Form</a></p>
<p><a href="/cgi-bin/ruby-sessions-1.rb">Back to Page 1</a></p>
<p><a href="/cgi-bin/ruby-sessions-2.rb">Back to Page 2</a></p>
</body>
</html>
HTML
