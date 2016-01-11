#!/usr/bin/env ruby

require 'pp'

def guess(name, chars)
  chars.split('').each do |char|
    if !name.scan(char).empty?
      name.sub!(char,'')
    else 
      return false
    end
  end
  true
end

File.open(ARGV[0]).each_line do |line|
  data, chars = line.split('|').map(&:strip)
  result = []
  data.split(' ').each_with_index do |word, idx|
    if guess(word, chars)
      result << idx
    end
  end
  if result.empty? 
    puts "False"
  else
    data.split(' ').each_with_index do |word, idx|
      if result.include? idx 
        print word + ' '
      end
    end
    puts
  end
end