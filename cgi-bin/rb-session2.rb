#!/usr/bin/env ruby
require "cgi"
require "cgi/session"
cgi = CGI.new
session = CGI::Session.new(cgi, "tmpdir"=>"/tmp")
puts cgi.header
puts "<html><body><h1>Ruby Session Page 2</h1>"
if session["username"]
  puts "<p><b>Name:</b> #{session['username']}</p>"
else
  puts "<p><b>Name:</b> Not set</p>"
end
puts '<a href="/cgi-bin/page1rb-session1.rb">Page 1</a><br>'
puts '<a href="/cgi-bin/rb-destroy-session.rb">Destroy</a>'
puts "</body></html>"
session.close
