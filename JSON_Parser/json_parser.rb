#!/usr/bin/ruby

require 'json'

f = File.open(ARGV.first)

f.each do |line|
  data = line.strip
  if data.size > 0
    doc = JSON.parse(line.strip)
    sum = 0
    doc['menu']['items'].each do |h|
      #sum += h['id'].to_i if h.has_key? 'label'
      unless h.nil? 
        if h.has_key? 'label'
          sum += h['id'].to_i 
        end
      end
    end
    puts sum
  end
end
