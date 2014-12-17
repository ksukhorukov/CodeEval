#!/usr/bin/env ruby

content = File.readlines(ARGV.first)

content.each do |line|
	numbers = line.split(' ');
	counter = numbers.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
	counter.each do |key, value| 
		print value.to_s + " " + key.to_s + " "
	end
	print "\n"
end