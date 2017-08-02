require 'rubygems'
  gem 'ebay'
  gem 'soap4r'

  # Put your credentials in this file
  load('myCredentials.rb')

  # Create new eBay caller object.  Omit last argument to use live platform.
  eBay = EBay::API.new($authToken, $84e2f991-2bb2-43f2-89f4-0fc8f0105403, $natebial-testebay-SBX-86c5cebfd-354ab797, $certId, :sandbox => true)
  
  resp = eBay.GeteBayOfficialTime

  puts "Hello, World!"
  puts "The eBay time is now: #{resp.timestamp}"

  # Wasn't that easy?!