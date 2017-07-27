require 'open-uri'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.amazon.com/dp/B0057XMUW6'))
id = doc.at('meta[@name="description"]')[:content]
pr = doc.at('#buyingPriceValue b')

puts << [id, pr]

