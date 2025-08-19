#!/usr/bin/env ruby
require "cgi"
cgi = CGI.new
puts "Cache-Control: no-cache"
puts cgi.header
puts "<html><body><h1>GET Echo</h1><hr>"
puts "<b>Query:</b> #{ENV['QUERY_STRING']}<br>"
cgi.params.each { |k,v| puts "#{k} = #{v[0]}<br>" }
puts "</body></html>"
