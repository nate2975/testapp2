require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
require 'mechanize'
results = []
agent = Mechanize.new
mechanize = Mechanize.new
file = File.open("jtest2.csv", 'r')
while !file.eof?
  model = file.readline
file.each do |model|


page = mechanize.get("https://www.prestigetime.com/items.php?search=#{model}").at('.caption-top a')['href']

mechanize.click page

page = Nokogiri::HTML(open("#{page}"))
headers = []
body = page.at('.table-responsive tbody').at('tr').map{|td|}
  #price = page.search(".container").at("span:contains('Special Price:')")

 results << [body]

 puts results
end
end