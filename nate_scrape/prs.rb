require 'rubygems'
require 'nokogiri'
require 'open-uri'
page = Nokogiri::HTML(open("http://www.sigmatime.net/scrape.html"))
puts page.class   # => Nokogiri::HTML::Document
puts page.css('title')
puts page.css('li')
puts page.css('li')[0..3].text
puts page.css('li')[0]['href']
puts page.css("li[data-category='news']")
puts page.css('div#funstuff')[0]
puts page.css('div#reference a')