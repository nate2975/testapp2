require 'nokogiri'
require "open-uri"

doc = Nokogiri::HTML(open('https://www.amazon.com/dp/B0057XMUW6'))
id = doc.at('meta[@name="description"]')[:content]
pr = doc.at('#buyingPriceValue b')

puts id

