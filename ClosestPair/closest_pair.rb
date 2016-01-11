#!/usr/bin/env ruby

require 'pp'

def distance(x0, y0, x1, y1)
  #puts "#{x0} #{y0} #{x1} #{y1}"
  Math.sqrt((x0 - x1)**2 + (y0 - y1)**2).round(4)
end

Struct.new("Point", :x, :y)
counter = 0
n = 0
points = []
File.open(ARGV[0]).each_line do |line|
  if counter == 0
    n = line.to_i
  elsif counter <= n
    x, y = line.split(' ').map(&:to_i)
    points << Struct::Point.new(x, y)
  end
  counter += 1
end

min = 0

for i in 0...n do 
  for j in 0...n do 
    if i != j
      dst = distance(points[i].x, points[i].y, points[j].x, points[j].y)
      if min == 0 
        min = dst 
      else
        min = dst if dst < min
      end
    end
  end
end

puts min

