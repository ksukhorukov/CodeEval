#!/usr/bin/env ruby

require 'pp'

def roman_number(n)
  m = n / 1000
  d = (n - (1000*m)) / 500
  c = (n - (m*1000) - (d*500)) / 100
  l = (n - (m*1000) - (d*500) - (c*100)) / 50
  x = (n - (m*1000) - (d*500) - (c*100) - (l*50)) / 10
  v = (n - (m*1000) - (d*500) - (c*100) - (l*50) - (x*10)) / 5
  i = (n - (m*1000) - (d*500) - (c*100) - (l*50) - (x*10) - (v*5)) 

  result = 'M'*m 

  if d*500 + c*100 == 900
     result += 'CM'
  else 
    result += 'D'*d + 'C'*c
  end

  if l*50 + x*10 == 90 
    result += 'XC'
  else 
    result += 'L'*l + 'X'*x
  end

  if v*5 + i == 9
    result += 'IX' 
  else
    result += 'V'*v + 'I'*i
  end

end

File.open(ARGV[0]).each_line do |line|
  puts roman_number(line.to_i)
end
