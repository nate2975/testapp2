require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
results = []
# file = File.open("jtest.csv", 'r')
#  while !file.eof?
#  link = file.readline
#  file.each do |link| sleep 4

user_agent = "Mozilla/4.0(compatible; MSIE 7.0b; Windows NT 6.0)"
html = "http://www.jomashop.com/iwc-mens-watch-iw371446.html"
   #uri = URI.parse(URI.encode("http://search.jomashop.com/search#w#{link}".strip))
@doc = Nokogiri::HTML(open(html, 'User-Agent' => user_agent), nil, "UTF-8")

title = @doc.css('.product-main-info span')[0..1].text
description = @doc.at_css('.attribute-list span')
price = @doc.css('.pdp-final-price span')[0]




results << [title, description, price]
puts results

# CSV.open("joma_scrape.csv", "w+") do |csv_file|
#   results.each do |col|
#     csv_file << col [0..4]

#uri = URI.parse(URI.encode("#{link}".strip))
#page = Nokogiri::HTML(open("http://www.jomashop.com/movado-watch-3600368.html"))



