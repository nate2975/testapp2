# ebay scrape price, feedback, seller
require "rubygems"
require "open-uri"
require "nokogiri"
require 'mechanize'
require 'csv'
require 'addressable/uri'
results =[]


url = "https://www.ebay.com/sch/http://www.ebay.com/sch/kidzlane"
data = Nokogiri::HTML(open(url))
# #http://www.ebay.com/sch/i.html?_from=R40&_nkw=frederique%20constant&rt=nc&LH_ItemCondition=1000

data.css(".li").each do |item|
  item_link = item.at_css(".vip")[:href]
  item_doc = Nokogiri::HTML(open(item_link))


seller = item_doc.at_css('.mbg.vi-VR-margBtm3 span').text
price = item_doc.at_css("#prcIsum")
feedback = item_doc.at_css('#si-fb')
#itemspc = item_doc.at(".itemAttr td").text.strip
  itemspc = item_doc.css('.itemAttr td h2')
 #itemspc = item_doc.at('.itemAttr td h2:contains("K1")')

 #itemspc = item_doc.css(".itemAttr td").text
results << [seller, price, feedback, itemspc]


CSV.open("test.csv", "w+") do |csv_file|
results.each do |col| csv_file << col
end
end
end


