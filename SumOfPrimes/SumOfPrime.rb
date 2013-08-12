#!/usr/bin/ruby

###########################################################################
#Challenge Description:
#
#Write a program to determine the sum of the first 1000 prime numbers.
#
#Input sample:
#
#There is no input for this program.
#
#Output sample:
#
#Your program should print the sum on stdout, i.e.
#
#3682913
###########################################################################

def is_prime_number(number)
  i = 2
  while(i*i <= number) do
    return false if number % i == 0
    i += 1      
  end
  true
end

sum, counter, number, n  = 0, 0, 2, 1000
primes = Array.new 

while counter < n do
  if is_prime_number(number)
      primes << number
      sum += number
      counter += 1
  end
  number += 1 
end

puts sum
puts primes.count
puts "##########################################################"

p primes

