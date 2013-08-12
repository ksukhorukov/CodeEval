#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  number = line.strip.to_i
  puts number.to_s(2).count("1")
end
