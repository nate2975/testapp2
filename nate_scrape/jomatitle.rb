require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
results = []
file = File.open("jtest.csv", 'r')
while !file.eof?
  model = file.readline
file.each do |model|


uri = URI.parse(URI.encode("#{model}".strip))
page = Nokogiri::HTML(open("#{uri}"))

brand = page.css('.product-main-info h1').text





results << [model, brand]

CSV.open("jresult.csv", "w+") do |csv_file|
  results. each do |row|
    csv_file << row
  end
end
end
end