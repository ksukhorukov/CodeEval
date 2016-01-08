#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  number = line.strip.to_i
  puts number.to_s(2)
end