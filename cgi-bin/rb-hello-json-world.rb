#!/usr/bin/env ruby
require "cgi"
require "json"
puts "Cache-Control: no-cache"
puts "Content-type: application/json\n\n"
msg = {
  title: "Hello, Ruby!",
  heading: "Hello, Ruby!",
  message: "This page was generated with Ruby",
  time: Time.now.to_s,
  IP: ENV["REMOTE_ADDR"]
}
puts msg.to_json
