#!/usr/bin/ruby

f = File.open(ARGV.first)

stack = Array.new

f.each do |line|
 data = line.strip.split(' ').reverse
 size = data.size
 data.each_with_index do |elem, index| 
  unless (index+1) % 2 == 0 
      print "#{elem} "
  end
  puts if (index + 1) == size
 end
end 
