#!/usr/bin/env ruby
require "cgi"
require "cgi/cookie"

cgi = CGI.new
cookies = CGI::Cookie.parse(ENV['HTTP_COOKIE'] || "")
name = cookies["session_name"]&.first || ""

print cgi.header("type"=>"text/html")
puts <<HTML
<!DOCTYPE html>
<html>
<head><title>Ruby Sessions Page 2</title></head>
<body>
<h1>Ruby Sessions Page 2</h1>
<p>Name: #{name}</p>
<p><a href="/cgi-bin/ruby-sessions-1.rb">Session Page 1</a></p>
<p><a href="/ruby-cgiform.html">Ruby CGI Form</a></p>
<form method="POST" action="/cgi-bin/ruby-destroy-session.rb">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>
HTML
