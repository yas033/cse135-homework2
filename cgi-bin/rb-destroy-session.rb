#!/usr/bin/env ruby
require "cgi"
require "cgi/session"
cgi = CGI.new
session = CGI::Session.new(cgi, "tmpdir"=>"/tmp")
session.delete
puts cgi.header
puts "<html><body><h1>Ruby Session Destroyed</h1>"
puts '<a href="/rb-cgiform.html">Back to Session Test</a>'
puts "</body></html>"
