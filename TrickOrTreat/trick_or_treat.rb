#!/usr/bin/env ruby

File.open(ARGV[0]).each_line do |line|
  data = /Vampires: (\d+), Zombies: (\d+), Witches: (\d+), Houses: (\d+)/.match(line)
  vampires = data[1].to_i
  zombies = data[2].to_i
  witches = data[3].to_i
  houses = data[4].to_i
  people = vampires + zombies + witches
  candies = vampires*3 + zombies*4 + witches*5
  avg = (candies*houses / people).floor
  puts avg
end