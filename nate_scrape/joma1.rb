require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
require 'mechanize'



mechanize = Mechanize.new

page = mechanize.get('https://www.swissarmy.com/us/en/search/product?q=241708')

link = page.link_with(text: 'maverick')

page = link.click

outs page.uri


