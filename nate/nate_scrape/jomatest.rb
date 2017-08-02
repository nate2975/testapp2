require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'csv'


user_agent = "Mozilla/5.0 (compatible; MSIE 9.0; AOL 9.7; AOLBuild 4343.19; Windows NT 6.1; WOW64; Trident/5.0; FunWebProducts)
Safari 6.0"
html = "http://www.jomashop.com/watches-for-men.html"
@doc = Nokogiri::HTML(open(html, 'User-Agent' => user_agent), nil, "UTF-8")


#page = Nokogiri::HTML(open("http://www.jomashop.com/citizen-bl5250-02l.html"))