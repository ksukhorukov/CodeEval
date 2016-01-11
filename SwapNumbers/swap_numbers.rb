#!/usr/bin/env ruby

def swap_numbers(word)
  center = word[1, word.size-2]
  word[word.size-1] + center + word[0]
end

File.open(ARGV[0]).each_line do |line|
  result = ''
  line.split(' ').each do |word|
    result += swap_numbers(word) + ' '
  end
  result.chomp!
  puts result
end