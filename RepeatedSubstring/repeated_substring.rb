#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  line.chomp!
  max = 0
  max_substr = ''
  for i in 0...line.size
    for j in 0...line.size 
      if i != j and i < j
        count = line.scan(line[i, j]).count 
        if count > max
          max = count 
          max_substr = line[i, j]
        end
      end
    end
  end
  if max_substr.size < 2 
    puts "NONE"
  else
    puts max_substr
  end
end