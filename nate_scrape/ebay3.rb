# ebay scrape price, feedback, seller
require "rubygems"
require "open-uri"
require "nokogiri"
require 'mechanize'
results = []

url = "http://www.ebay.com/sch/FC306MC4S36"
data = Nokogiri::HTML(open(url))


data.css(".li").each do |item|
  item_link = item.at_css(".vip")[:href]
  item_doc = Nokogiri::HTML(open(item_link))
feedback = item_doc.at_css('#si-fb').text
 seller = item_doc.at_css('.mbg.vi-VR-margBtm3 span').text
   price = item_doc.at_css("#prcIsum").text
results << [seller, feedback, price]
puts results

end