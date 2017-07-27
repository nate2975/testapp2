require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
# results = []
# file = File.open("jtest.csv", 'r')
# while !file.eof?
#   link = file.readline
# file.each do |link|



uri = URI.parse(URI.encode("http://www.sigmatime.com/s-23110392101002/".strip))
page = Nokogiri::HTML(open("#{uri}"))

title = page.css('.zoomPad img src')




 CSV.open("joma_scrape.csv", "w+") do |csv_file|
title.each do |col|
 csv_file << col


end
end
# end
# end






url = "http://www.sigmatime.com/s-23110392101002/"
data = Nokogiri::HTML(open(url))





  src = data.at

puts src

