#!/usr/bin/ruby

def fibonacci(number)
  return 0 if number == 0
  return 1 if number == 1
  return fibonacci(number-1) + fibonacci(number-2)
end

f = File.open(ARGV.first)

f.each do |number|
  puts fibonacci(number.to_i)
end
