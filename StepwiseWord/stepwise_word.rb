#!/usr/bin/env ruby

def stepwise(word, idx)
  for i in 0..idx
    if i < idx 
      print '*'
    else
      print word[idx]
    end
  end
end

File.open(ARGV[0]).each_line do |line|
  max = 0
  max_word = ''
  line.split(' ').each do |word|
    length = word.length
    if length > max 
      max = length
      max_word = word 
    end
  end
  for i in 0...max_word.length
    stepwise(max_word, i)
    print ' '
  end
  puts
end