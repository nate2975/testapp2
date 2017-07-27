require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'csv'
require 'xpath'
require 'active_support/all'
require 'addressable/uri'
require 'mechanize'
def scrape_jomashop

model = '23110392101002'

@link = "http://search.jomashop.com/search#w=#{model}"
url = @link
parse_page = Nokogiri::HTML(open(url))
x = uri = Addressable::URI.parse("http://search.jomashop.com/search#w=#{model}")

render text: uri
end





