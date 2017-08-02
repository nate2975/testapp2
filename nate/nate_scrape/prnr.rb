require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
require 'mechanize'

agent = Mechanize.new
mechanize = Mechanize.new
page = mechanize.get('https://www.prestigetime.com/items.php?search=al525')
x = page.search(".form-inline").at("span:contains('items')").text
if
x.include? "items"
then
  page = mechanize.get('https://www.prestigetime.com/items.php?search=al525').at('.caption-top a')['href']
page = Nokogiri::HTML(open("#{page}"))
y = page.at('.table-responsive tbody').text
puts y

  else

  puts 'not found'

end


















