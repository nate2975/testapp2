require "rubygems"
require "open-uri"
require "nokogiri"

url = "http://www.ebay.com/sch/Cars-Trucks-/6001/i.html?_from=R40&_sac=1&_vxp=mtr&_nkw=car+projects&_ipg=200&rt=nc"
data = Nokogiri::HTML(open(url))

data.css(".li").each do |item|
  item_link = item.at_css(".vip")[:href]
  item_doc = Nokogiri::HTML(open(item_link))

  puts item_doc.at_css("#itemTitle").text.sub! 'Details about', ''
end














