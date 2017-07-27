require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'
require 'addressable/uri'
require 'mechanize'

data = []


page = Nokogiri::HTML(open("http://www.gemnation.com/watches/Corum-Admirals-Cup-Admirals-Seafender-48-753.451.04-0371-AN-34633.html"))

x = page.css('.watchDetailsLeft')[0..2].text
y = page.css('.watchDetailsRight')[0..2].text





data << [x, y]



CSV.open("jresult.csv", "w+") do |csv_file|
  data.each do |row|
    csv_file << row


end
end








