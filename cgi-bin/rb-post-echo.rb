#!/usr/bin/env ruby
require "cgi"
cgi = CGI.new
puts "Cache-Control: no-cache"
puts cgi.header
puts "<html><body><h1>POST Echo</h1><hr>"
puts "<b>Message Body:</b><ul>"
cgi.params.each { |k,v| puts "<li>#{k} = #{v[0]}</li>" }
puts "</ul></body></html>"
