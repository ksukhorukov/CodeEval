#!/usr/bin/ruby

f = File.open(ARGV.first)

f.each do |line|
  str, t = line.split(',').map(&:strip)
  pos = str.rindex(t)
   
  if pos 
    puts pos 
  else 
    puts "-1" 
  end
    
end
