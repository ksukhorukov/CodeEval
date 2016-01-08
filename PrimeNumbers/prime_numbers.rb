#!/usr/bin/env ruby

def is_prime(n)
  for i in 2..Math.sqrt(n).to_i
    return false if n % i == 0
  end
  true
end

File.open(ARGV[0]).each_line do |line|
  limit = line.to_i
  result = ''
  for i in 2..limit-1 do 
    result += i.to_s + ',' if is_prime(i)
  end
  puts result.chop
end