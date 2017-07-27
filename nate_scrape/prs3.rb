require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'

#file = File.open("test1.csv", 'r')
#while !file.eof?
  # model = file.readline
#file.each do |model|
#file = File.open("test1.txt", "r")
#model = file.text
#model = File.open("test1.csv", 'r')
#csv = CSV.parse(model, :headers => false)
#csv.each do |model|
#arr = [0 ,1 ,2 ,3]

#while !file.eof?
#["F495110", "23110392101002"]
#model.each do |model|
model = "http://www.jomashop.com/frederique-constant-watch-245sa5s6b.html"
page = Nokogiri::HTML(open("#{model}"))




  x = page.css('.attribute-data').text

#y = doc.css('.attribute-data').text
puts [x]




    #CSV.open("test.csv", "wb") do |csv|
      #csv << [x]

#end
