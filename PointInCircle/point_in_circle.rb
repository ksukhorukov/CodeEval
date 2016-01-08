#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  #Center: (2.12, -3.48); Radius: 17.22; Point: (16.21, -5)
  data = /Center: \((-?\d+\.?\d*)\, (-?\d+\.?\d*)\); Radius: (\d+\.?\d*); Point: \((-?\d+\.?\d*)\,? (-?\d+\.?\d*)\)/.match(line)
  x0 = data[1].to_f
  y0 = data[2].to_f
  r = data[3].to_f
  x = data[4].to_f
  y = data[5].to_f
  if (x - x0)**2 + (y - y0)**2 <= r**2
    puts "true"
  else
    puts "false"
  end
end