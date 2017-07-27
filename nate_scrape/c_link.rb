require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'

file = File.open("jtest.csv", 'r')
  link = file.readline
file.each do |link|
  file = File.open("model.csv", 'r')
  model = file.readline
file.each do |model|






puts [link, model]

end
end


