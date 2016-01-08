#!/usr/bin/env ruby

def is_prime(n)
  for i in 2..Math.sqrt(n).to_i
    return false if n % i == 0
  end
  true
end

File.open(ARGV[0]).each_line do |line|
  down, up = line.split(',').map(&:to_i)
  counter = 0
  for i in down..up do 
    counter += 1 if is_prime(i)
  end
  puts counter
end
