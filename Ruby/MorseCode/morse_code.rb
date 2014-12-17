#!/usr/bin/env ruby

Code = Hash.new 

Code['A'] = '.-'
Code['B'] = '-...'
Code['C'] = '-.-.'
Code['D'] = '-..'
Code['E'] = '.'
Code['F'] = '..-.'
Code['G'] = '--.'
Code['H'] = '....'
Code['I'] = '..'
Code['J'] = '.---'
Code['K'] = '-.-'
Code['L'] = '.-..'
Code['M'] = '--'
Code['N'] = '-.'
Code['O'] = '---'
Code['P'] = '.--.'
Code['Q'] = '--.-'
Code['R'] = '.-.'
Code['S'] = '...'
Code['T'] = '-'
Code['U'] = '..-'
Code['V'] = '...-'
Code['W'] = '.--'
Code['X'] = '-..-'
Code['Y'] = '-.--'
Code['Z'] = '--..'
Code['0'] = '-----'
Code['1'] = '.----'
Code['2'] = '..---'
Code['3'] = '...--'
Code['4'] = '....-'
Code['5'] = '.....'
Code['6'] = '-....'
Code['7'] = '--...'
Code['8'] = '---..'
Code['9'] = '----.'
Code[' '] = 'space'

Morse = Code.invert

content = File.readlines(ARGV.first)

content.each do |line|
	line.sub!(/\s{2}/, ' space ')
	line.split(' ').each do |msg|
		print Morse[msg]
	end
	print "\n"
end
