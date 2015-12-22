#!/usr/bin/env ruby

result = []
myFile = File.open(ARGV[0])
limit = myFile.gets.to_i

while (line = myFile.gets) do 
    line.delete!("\n")
    result << line
end
puts result.sort_by(&:length).reverse.shift(limit)

