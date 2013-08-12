#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  parts = line.split(';')
  first_set = parts[0].split(',')
  second_set = parts[1].split(',')
  puts (first_set & second_set).join(",")
end
