#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  rows = line.split('|').map(&:strip)
  scores = Hash.new(-100000000000)
  rows.each do |row|
    row.split(' ').map(&:to_i).each_with_index do |score, index|
      scores[index] = score if score > scores[index]
    end
  end
  scores.keys.sort.each do |key|
    print scores[key].to_s + ' '
  end
  puts 
end