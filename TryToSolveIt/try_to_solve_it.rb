#!/usr/bin/env ruby

code = {}
code2 = {}

code['A'] = 'U'
code['B'] = 'V'
code['C'] = 'W'
code['D'] = 'X'
code['E'] = 'Y'
code['F'] = 'Z'
code['G'] = 'N'
code['H'] = 'O'
code['I'] = 'P'
code['J'] = 'Q'
code['K'] = 'R'
code['L'] = 'S'
code['M'] = 'T'

code.each_key { |key| code2[code[key]] = key }

File.open(ARGV[0]).each_line do |line|
  decoded = ''
  line.chomp.split('').each do |char|
    if code.has_key? char.upcase
      decoded += code[char.upcase].downcase
    elsif code2.has_key? char.upcase
      decoded += code2[char.upcase].downcase
    end
  end 
  puts decoded
end

