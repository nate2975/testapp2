require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
require 'mechanize'
results = []
agent = Mechanize.new
mechanize = Mechanize.new



page = mechanize.get("http://www.jomashop.com/")

mechanize.click page

