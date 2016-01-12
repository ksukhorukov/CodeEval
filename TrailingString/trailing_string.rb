#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  one, two = line.strip.split(',')
  if one[one.size-two.size,one.size] == two 
    puts '1'
  else
    puts '0'
  end
end