#!/usr/bin/env ruby

def test(src, dst)
  mistakes = 0
  for i in 0...src.length do
    mistakes += 1 if src[i] != dst[i]
  end

  if mistakes > 0 and mistakes <= 2
    "Low"
  elsif mistakes > 2 and mistakes <= 4
    "Medium"
  elsif mistakes > 4 and mistakes <= 6
    "High"
  elsif mistakes > 6
    "Critical"
  else
    "Done"
  end
end

File.open(ARGV[0]).each_line do |line|
  src, dst = line.split('|').map(&:strip)
  puts test(src, dst)
end