#!/usr/bin/ruby

require 'uri'

def uris_are_equal(uri1, uri2)

  #SCHEMA comparison
  return false unless uri1[1].casecmp(uri2[1]) == 0

  #HOSTNAME comparison
  return false unless uri1[4].casecmp(uri2[4]) == 0

  

  #PORT comparison
  port1 = uri1[5] || "80"
  port2 = uri2[5] || "80"

  return false unless port1 == port2
  
  #RESOURCE comparison
  return false unless uri1[7].casecmp(uri2[7]) 

  return true

end

f = File.open(ARGV.first)


f.each do |line|
  uri = line.strip.split(';')
  if uris_are_equal(URI.unescape(uri[0]), URI.unescape(uri[1]))
    puts "True"
  else
    puts "False"
  end
end
