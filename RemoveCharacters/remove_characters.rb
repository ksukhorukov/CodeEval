#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  data, exception = line.strip.split(',').map(&:strip)
  data = data.split('')
  cleaned = ""
  data.each { |c| cleaned << c unless exception.count(c) > 0 }
  puts cleaned
end
