#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  freq = Hash.new(0)
  chars = line.strip.split('')
  chars.each { |char| freq[char] += 1}
  chars.each do |char| 
    if freq[char] == 1
      puts char 
      break
    end
  end
end
