#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  data = line.split(' ')
  shifting = (data[data.size-1].to_i * -1) - 1
  element = data[shifting]
  puts element unless element.nil?
end
