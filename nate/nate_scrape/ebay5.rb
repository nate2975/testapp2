# ebay scrape price, feedback, seller
require "rubygems"
require "open-uri"
require "nokogiri"
require 'mechanize'
require 'csv'
require 'addressable/uri'
#results =[]
file = File.open("jtest.csv", 'r')
while !file.eof?
  link = file.readline
  file.each do |query|
    #ebay condition
    new = '&rt=nc&LH_ItemCondition=1000'
    #ebay location
    loc = '&rt=nc&LH_PrefLoc=1'
    url = "https://www.ebay.com/sch/Wristwatches/31387/i.html?_from=R40&_nkw=#{query}"
    data = Nokogiri::HTML(open(url))

   data.css(".li").each do |item|
  item_link = item.at_css("a.vip")[:href]
#       item_doc = Nokogiri::HTML(open(item_link))
puts item_link
#       seller = item_doc.at_css('.mbg.vi-VR-margBtm3 span').text
#       price = item_doc.at_css("#prcIsum").text
#       feedback = item_doc.at_css('#si-fb').text
#       itemspc = item_doc.css('.itemAttr td h2')

#       results << [seller, price, feedback, itemspc]

#       CSV.open("joma_scrape.csv", "w+") do |csv_file|
#         results.each do |col| csv_file << col
     end
end

   end
# end
# end
# end
#itemspc = item_doc.at(".itemAttr td").text.strip
#itemspc = item_doc.css(".itemAttr td").text
#itemspc = item_doc.at('.itemAttr td h2:contains("K1")')
# #http://www.ebay.com/sch/i.html?_from=R40&_nkw=frederique%20constant&rt=nc&LH_ItemCondition=1000
#http://www.ebay.com/sch/Wristwatches/31387/i.html?_from=R40&_nkw=TW428&rt=nc&LH_ItemCondition=1000
#uri = URI.parse(URI.encode("#{link}".strip))
#page = Nokogiri::HTML(open("#{uri}"))
#&LH_PrefLoc=1

