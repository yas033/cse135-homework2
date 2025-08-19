#!/usr/bin/env ruby
puts "Cache-Control: no-cache"
puts "Content-type: text/html\n\n"
puts "<html><body><h1>Environment</h1><hr>"
ENV.sort.each do |k,v|
  puts "<b>#{k}</b>: #{v}<br>"
end
puts "</body></html>"
