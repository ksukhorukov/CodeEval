#!/usr/bin/env ruby

def longest_unique_number(numbers)
	counts = Hash.new(0)
	numbers.each do |number|
		counts[number] += 1
	end
	unique = numbers.uniq.sort
	unique.each do |number|
		return number if counts[number] == 1
	end
	return 0
end

contents = File.readlines(ARGV.first)

contents.each do |line|
	puts longest_unique_number(line.chomp.split(' ').map(&:to_i))
end