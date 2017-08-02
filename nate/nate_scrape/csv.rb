require 'rubygems'
require 'nokogiri'
require 'csv'
#test = CSV.read('test.csv')

CSV.foreach('test.csv') do |row|
  puts row.inspect

end