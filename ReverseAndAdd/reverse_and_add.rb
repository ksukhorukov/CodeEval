#!/usr/bin/env ruby

def reverse_and_add(n)
  reverse =  n.to_s.reverse
  summ = n.to_i + reverse.to_i
end

def palindrome(n)
  n.to_s == n.to_s.reverse
end

File.open(ARGV[0]).each_line do |line|
  n = line
  counter = 0
  while !palindrome(n) do 
    n = reverse_and_add(n)
    counter += 1
  end
  puts "#{counter} #{n}"
end
