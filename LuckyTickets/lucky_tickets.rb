#!/usr/bin/env ruby

def is_lucky(ticket)
  median = ticket.to_s.length / 2
  ticket = ticket.to_s.split('').map(&:to_i)
  part1 = 0
  part2 = 0 
  for i in 0..median-1
    part1 += ticket[i]
  end
  for i in median..median*2-1
    part2 += ticket[i]
  end
  if part1 == part2 
    true
  else
    false
  end
end

File.open(ARGV[0]).each_line do |line|
  digits = line.to_i
  number = 0
  counter = 0
  while number.to_s.length <= digits 
    counter += 1 if is_lucky(number)
    number += 1
  end
  puts counter
end