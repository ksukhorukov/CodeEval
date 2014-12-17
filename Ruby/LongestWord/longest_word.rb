#!/usr/bin/env ruby

contents = File.readlines(ARGV.first)

contents.each do |line|
	puts line.split(' ').max_by(&:length)
end