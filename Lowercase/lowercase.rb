#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  puts line.downcase
end
