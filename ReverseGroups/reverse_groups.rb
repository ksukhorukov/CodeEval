#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  line = line.strip
  data, k = line.split(';')
  digits = data.split(',')
  list = []
  result = ''
  digits.each_with_index do |digit, idx|
    list << digit
    if (idx+1) % k.to_i == 0
      result += ',' + list.reverse.join(',')
      list = []
    end
  end
  result += ',' + list.join(',') unless list.empty?
  result[0] = ''
  puts result
end