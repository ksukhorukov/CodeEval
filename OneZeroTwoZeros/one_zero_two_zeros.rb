#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  zeros, limit = line.split(' ').map(&:to_i)
  counter = 0
  for i in 1..limit do 
    counter += 1 if i.to_s(2).scan('0').count == zeros
  end
  puts counter
end