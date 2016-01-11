#!/usr/bin/env ruby

require 'pp'

def correct?(line)
  queue = []
  line.split('').each do |char|
    if char == '('
      queue.unshift ')'
    elsif char == '['
      queue.unshift ']'
    elsif char == '{'
      queue.unshift '}'
    end
  end

  pp queue

  line.split('').each do |char| 
    closer = queue.pop
    puts closer
    if char == '(' and closer != ')'
      puts "false1"
      return false 
    elsif char == '[' and closer != ']'
      puts "false2"
      return false 
    elsif char == '{' and closer != '}'
      puts char, closer
      puts "false3"
      return false 
    end
  end

  true

end

File.open(ARGV[0]).each_line do |line|
  if correct?(line)
    puts "True"
  else
    puts "False"
  end
end