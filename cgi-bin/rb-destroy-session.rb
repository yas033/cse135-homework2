#!/usr/bin/env ruby
require "cgi"
require "cgi/session"
cgi = CGI.new
session = CGI::Session.new(cgi, "tmpdir"=>"/tmp")
session.delete
puts cgi.header
puts "<html><body><h1>Ruby Session Destroyed</h1>"
puts '<a href="/cgi-bin/page1.rb">Back to Page 1</a>'
puts "</body></html>"
