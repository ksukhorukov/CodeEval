#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  digits, pattern = line.split(' ')
  delimiter = pattern.index('+')
  operator = '+'
  unless delimiter
    delimiter = pattern.index('-')
    operator = '-'
  end
  part1 = digits[0,delimiter].to_i
  part2 = digits[delimiter, digits.length-1].to_i
  puts case operator
  when '+'
    part1 + part2 
  when '-'
    part1 - part2
  end
end