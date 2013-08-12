#!/usr/bin/ruby

n = 1000
i = 2
sum = 0

marker = Array.new(n, true)

while(i*i <= n) do
  if marker[i] == true 
    j = i*i
    k = 1
    while(j <= n) do
      marker[j] = false 
      j += k*i
    end
  end
  i += 1
end

primes = Array.new

(2..n).each do |i|
 if marker[i] == true
   sum += i
   primes << i
 end
end

puts sum
puts primes.count  



