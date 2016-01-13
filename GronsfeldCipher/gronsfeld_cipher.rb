#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  vocabulary = " !\"#$%&'()*+,-./0123456789:<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  key, message = line.strip.split(';').map(&:strip)
  result = ''
  key_index = 0
  message.split('').each_with_index do |char, index|
    if index != 0 
      if key_index == key.length 
        key_index = 0 
      end
    end
    decode_index = vocabulary.index(char) - key[key_index].to_i
    result += vocabulary[decode_index]
    key_index += 1
  end
  puts result
end