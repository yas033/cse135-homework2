#!/usr/bin/env ruby
require "cgi"
cgi = CGI.new
puts "Cache-Control: no-cache"
puts cgi.header
puts "<html><body><h1>Hello Ruby CGI</h1>"
puts "<p>Generated with Ruby</p>"
puts "<p>Time: #{Time.now}</p>"
puts "<p>IP: #{ENV['REMOTE_ADDR']}</p>"
puts "</body></html>"
