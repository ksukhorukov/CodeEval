#!/usr/bin/env ruby

content = File.readlines(ARGV.first)

def sqrSum(number)
	number = number.to_s
	sqr_sum = 0;
	sqr = 0;
	number.split('').each do |digit|
		sqr = digit.to_i * digit.to_i;
		sqr_sum += sqr;
	end 
	sqr_sum
end

def isHappy(number)
	cycle = Hash.new(0)
	sqr_sum = number
	while true do 
		sqr_sum = sqrSum(sqr_sum).to_s
		return 1 if sqr_sum == '1'
		return 0 if cycle.has_key? sqr_sum 
		cycle[sqr_sum] = true;
	end
end

content.each do |number|
	number.strip!
	puts isHappy(number)
end