#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  nf = Hash.new(0) #frequency table
  unique_min_set = Array.new
  numbers = line.strip.split(' ').map(&:to_i)
  numbers.each { |num| nf[num] += 1 }
  #p numbers
  #p nf
  numbers.uniq.map(&:to_i).each do |n|
    unique_min_set << n unless nf[n] > 1
  end
  if unique_min_set.min.nil?
    puts 0
  else
    puts unique_min_set.min
  end
end
