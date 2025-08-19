#!/usr/bin/env ruby
puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\n"
puts "<html><body><h1>General Echo</h1><hr>"
puts "<p><b>Protocol:</b> #{ENV['SERVER_PROTOCOL']}</p>"
puts "<p><b>Method:</b> #{ENV['REQUEST_METHOD']}</p>"
puts "<p><b>Query:</b> #{ENV['QUERY_STRING']}</p>"
body = STDIN.read.to_s
puts "<p><b>Message Body:</b> #{body}</p>"
puts "</body></html>"

