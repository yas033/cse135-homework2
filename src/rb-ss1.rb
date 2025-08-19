#!/usr/bin/env ruby
require "cgi"
require "cgi/cookie"

cgi = CGI.new
cookies = CGI::Cookie.parse(ENV['HTTP_COOKIE'] || "")
name = cookies["session_name"]&.first || ""

if cgi["name"] && !cgi["name"].empty?
  name = cgi["name"]
  cookie = CGI::Cookie.new("session_name", name)
  print cgi.header("type"=>"text/html", "cookie"=>[cookie])
else
  print cgi.header("type"=>"text/html")
end

puts <<HTML
<!DOCTYPE html>
<html>
<head><title>Ruby Sessions Page 1</title></head>
<body>
<h1>Ruby Sessions Page 1</h1>
<p>Name: #{name}</p>
<p><a href="/cgi-bin/ruby-sessions-2.rb">Session Page 2</a></p>
<p><a href="/ruby-cgiform.html">Ruby CGI Form</a></p>
<form method="POST" action="/cgi-bin/ruby-destroy-session.rb">
  <input type="submit" value="Destroy Session">
</form>
</body>
</html>
HTML
