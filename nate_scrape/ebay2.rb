# ebay seller name

require "rubygems"
require "open-uri"
require "nokogiri"
require 'mechanize'


url = "http://www.ebay.com/sch/Grovana%20Men's%20diver%20black%20dial%20blue%20bezel"
data = Nokogiri::HTML(open(url))


data.css(".li").each do |item|
  item_link = item.at_css(".vip")[:href]
  item_doc = Nokogiri::HTML(open(item_link))
# x = item_doc.at_css('.mbg.vi-VR-margBtm3 span').text
# results << [x]
# x = item_doc.at_css(".itemAttr").text
 x = item_doc.at_css('.itemAttr:contains("1571.2135")').text.strip
puts  x
end