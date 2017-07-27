require 'rubygems'
require 'mechanize'
require 'open-uri'

agent = Mechanize.new
agent.get("http://search.jomashop.com/search#w=")

#agent.page.forms[0]
#agent.page.forms[0]["name"] = "SAR8A80.FT6045"
#agent.page.forms[0].submit

agent.page.forms[3].fields