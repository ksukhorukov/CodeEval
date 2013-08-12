#!/usr/bin/ruby

f = File.open(ARGV.first)
f.each do |line|
   numbers = line.split(/,/).map(&:to_i).uniq
   result = ""
   numbers.each do |n|
     result += "#{n.to_s},"
   end
   puts result.chop!
end
