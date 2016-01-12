#!/usr/bin/env ruby

def valid?(number)
  summ = 0
  number.split('').map(&:to_i).reverse.each_with_index do |n, i|
    if (i+1).even?
      n *= 2
      n = n.to_s.split('').map(&:to_i).reduce(&:+) if n > 9
    end
    summ += n 
  end 
  if summ % 10 == 0
    true
  else
    false
  end
end

File.open(ARGV[0]).each_line do |line|
  number = line.strip.gsub(' ', '')
  if valid?(number)
    puts "1"
  else
    puts "0"
  end
end
