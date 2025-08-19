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
