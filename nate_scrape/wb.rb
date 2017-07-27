require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
results = []



uri = URI.parse(URI.encode("https://www.swissarmy.com/us/en/Products/Watches/Women%27s-Watches/Maverick-Mechanical-Lady/p/241708"))
page = Nokogiri::HTML(open("#{uri}"))

x = page.css('.g-col.g-col-1 tbody').text
y = page.css('.group-richtext').text

results << [x, y]

puts results
