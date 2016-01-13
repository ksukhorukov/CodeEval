#!/usr/bin/env ruby

  translation = {
    'r' => 't',
    'b' => 'h',
    'c' => 'e',
    'v' => 'p',
    'j' => 'u',
    'n' => 'b',
    'm' => 'l',
    'k' => 'i',
    'f' => 'c',
    'd' => 's',
    'y' => 'a',
    'x' => 'm',
    'q' => 'z',
    'i' => 'd',
    'a' => 'y',
    'z' => 'q',
    'o' => 'k',
    's' => 'n',
    'e' => 'o',
    'w' => 'f',
    'u' => 'j',
    'l' => 'g',
    'p' => 'r',
    't' => 'w',
    'g' => 'v',
    'h' => 'x',
    ' ' => ' '
  }

File.open(ARGV[0]).each_line do |line|
  line.strip.split('').each do |char|
    print translation[char]
  end
  puts
end