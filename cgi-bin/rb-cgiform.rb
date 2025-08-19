#!/usr/bin/env ruby
require "cgi"

cgi = CGI.new
cookies = CGI::Cookie::parse(ENV['HTTP_COOKIE'] || "")
name = cookies["name"]&.first || "yanhua"

print cgi.header("type" => "text/html")
puts <<HTML
<html><body>
  <h1>Ruby Session Page 1</h1>
  <p><b>Name:</b> #{CGI.escapeHTML(name)}</p>
  <a href="rb-session2.rb">Session Page 2</a><br>
  <a href="rb-cgiform.rb">Ruby CGI Form</a><br><br>
  <a href="rb-destroy-session.rb">Destroy Session</a>
</body></html>
HTML
