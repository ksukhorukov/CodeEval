#!/usr/bin/ruby

f = File.open("prime_numbers.txt", "r")
primes = Array.new

f.each do |line|
  primes = primes | line.strip.split(/\s+/)
end

sum = primes.map(&:to_i).reduce(:+)
p sum
