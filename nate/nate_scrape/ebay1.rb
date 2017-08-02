require "rubygems"
require "open-uri"
require "nokogiri"
require 'mechanize'


url = "https://www.ebay.com/sch/Grovana%20Men's%20diver%20black%20dial%20blue%20bezel"
data = Nokogiri::HTML(open(url))

data.css(".li").each do |item|
  item_link = item.at_css(".vip")[:href]
  item_doc = Nokogiri::HTML(open(item_link))

  price = item_doc.at_css("#prcIsum").text
  x = item_doc.at_css(".itemAttr").text
#ody = page.at('.table-responsive tbody').at('tr').map{|td|}
  #price = page.search(".container").at("span:contains('Special Price:')")

  if x.include?('1571.2135')
    puts price
    else
    puts 'sorry dude not a match'
  end
end


