#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  line.downcase!
  line.scan(/[a-z]+/).each do |word|
    print word + ' '
  end
  puts
end