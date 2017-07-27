require 'rubygems'
require 'restclient'
require 'nokogiri'

REQUEST_URL = "https://www.prestigetime.com/items.php?search="

name_term = '7047BRG99ZU'

if page = RestClient.post(REQUEST_URL, {'name'=>name_term, 'submit'=>'Get+title'})

  puts "Success finding search term: #{name_term}"
end