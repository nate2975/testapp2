require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'

file = File.open("jtest.csv", 'r')
while !file.eof?
  model = file.readline
file.each do |model|


uri = URI.parse(URI.encode("#{model}".strip))
page = Nokogiri::HTML(open("#{uri}"))

x = page.css('.attribute-list')[0..2].text


 puts x
end
 end
