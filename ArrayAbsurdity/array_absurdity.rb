#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  if line.strip.empty? 
    next
  else
    data = line.split(';')[1].strip
    rr = data.split(',').map(&:to_i)
    puts arr.detect { |e| arr.count(e) > 1 }
  end
end
