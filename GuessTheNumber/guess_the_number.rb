#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  data = line.split(' ')
  limit = data[0].to_i
  answers = data[1,data.size-1]
  guess = (limit / 2).ceil
  answers.each do |answer|
    if answer == 'Lower'
      guess = (guess / 2).ceil
    elsif answer =='Higher'
      guess = (limit - (guess / 2)).ceil
    elsif answer == 'Yay!'
      puts guess
    end
    limit = limit - guess
  end
end