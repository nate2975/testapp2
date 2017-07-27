require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
results = []

file = File.open("jtest2.csv", 'r')
while !file.eof?
  model = file.readline
file.each do |model|


uri = URI.parse(URI.encode("https://www.prestigetime.com/items.php?search=#{model}".strip))
page = Nokogiri::HTML(open("#{uri}"))

body = page.css('.caption-top a')[0]['href']

results << [model, body]

  puts results

end
end












