#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  a_x, a_y, a_x1, a_y1, b_x, b_y, b_x1, b_y1 = line.split(',').map(&:to_i)
  if !( a_y < b_y1 || a_y1 > b_y || a_x1 < b_x || a_x > b_x1 )
    puts "True"
  else
    puts "False"
  end

end