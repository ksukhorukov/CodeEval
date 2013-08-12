#!/usr/bin/ruby

def is_balanced(str)

 min_level, max_level = [0, 0]
 
 str.split('').each do |c|
   if c == '('
     min_level += 1
     max_level += 1
   elsif c == ')'
     min_level = [min_level -1, 0].max
     max_level -= 1
     return false if max_level < 0 
   elsif c == '{'
     max_level += 1
   elsif c == '}'
     min_level = [min_level - 1, 0].max
   end

   return (min_level <= 0 and max_level >= 0) 
   
 end

end

def smileys(str)
  
  return true if str.empty?
  puts "not empty"
  return false unless /^([a-z:() ]+$)/.match(str)
  puts "correct format"

  str.gsub!(':)', '}')
  str.gsub!(':(', '{')
  str.gsub!(/[a-z: ]/,'')

  return is_balanced(str)
 
end

f = File.open(ARGV.first)

f.each do |line|
 
  if smileys(line.strip)  
    puts "YES"
  else
    puts "NO"
  end

end


