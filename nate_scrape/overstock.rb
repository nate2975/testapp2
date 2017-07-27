require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
require 'mechanize'

agent = Mechanize.new
mechanize = Mechanize.new



page = mechanize.get("http://www.overstock.com/search?keywords=K1V27704&SearchType=Header").at('.product-content a')['href']

mechanize.click page

page = Nokogiri::HTML(open("#{page}"))

body = page.at('.description.toggle-content ul').text
puts body