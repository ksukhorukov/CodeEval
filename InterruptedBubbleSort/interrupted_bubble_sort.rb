#!/usr/bin/env ruby

def bubble(arr, n)
  counter = 0
  length = arr.size
  for i in 0...length
    for j in 0...length 
      arr[i], arr[j] = arr[j], arr[i] if arr[i] < arr[j]
      counter += 1
      return arr if counter == n 
    end
  end
  arr
end

File.open(ARGV[0]).each_line do |line|
  arr, n = line.split('|')
  arr = arr.split(' ').map(&:to_i)
  result = bubble(arr, n.to_i)
  result.each do |elem|
    print elem.to_s + ' '
  end
  puts
end