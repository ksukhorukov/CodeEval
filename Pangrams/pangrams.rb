#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  line.downcase!
  line.strip!
  alphabet = {}
  ('a'..'z').each { |letter| alphabet[letter] = 0 }
  line.split('').each do |char|
    if char >= 'a' and char <= 'z' 
      alphabet[char] += 1
    end
  end
  missing_letters = []
  alphabet.keys.each { |letter| missing_letters << letter if alphabet[letter] == 0 }
  if missing_letters.empty?
    puts "NULL"
  else
    puts missing_letters.join
  end
end