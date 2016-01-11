#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  first, second = line.split(',')
  first = first.split('').sort
  second = second.split('').sort
  if first == second 
    puts "True"
  else
    puts "False"
  end
end
