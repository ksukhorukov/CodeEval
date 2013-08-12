#!/usr/bin/ruby 

f = File.open(ARGV.first)

f.each do |line|
  words = line.split(/\s+/)
  unless words.empty?
    words.reverse.each { |word| print "#{word} " }
    puts
  end
end
