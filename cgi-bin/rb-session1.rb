#!/usr/bin/env ruby
require "cgi"
require "cgi/session"
cgi = CGI.new
session = CGI::Session.new(cgi, "tmpdir"=>"/tmp")

name = cgi["username"]
session["username"] = name unless name.empty?

puts cgi.header
puts "<html><body><h1>Ruby Session Page 1</h1>"
if session["username"]
  puts "<p><b>Name:</b> #{session['username']}</p>"
else
  puts "<p><b>Name:</b> Not set</p>"
end
puts '<a href="/cgi-bin/rb-session2.rb">Page 2</a><br>'
puts '<form method="POST"><input type="text" name="username">'
puts '<input type="submit" value="Set Name"></form>'
puts "</body></html>"
session.close
