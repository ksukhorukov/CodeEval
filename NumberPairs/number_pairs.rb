#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  data, summ = line.split(';')
  numbers = data.split(',').map(&:to_i)
  summ = summ.to_i
  result = ''
  for i in 0..numbers.length-1 do 
    for j in i+1..numbers.length-1 do 
      if numbers[i] + numbers[j] == summ
        result += numbers[i].to_s + ',' + numbers[j].to_s + ';'
      end
    end
  end
  unless result == ''
    puts result.chomp
  else
    puts "NULL"
  end
end