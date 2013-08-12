#!/usr/bin/ruby

p File.open(ARGV.first).to_a.map(&:to_i).reduce(:+)
