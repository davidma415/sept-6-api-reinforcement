require 'httparty'

passwords_request = HTTParty.get('http://makemeapassword.org/api/v1/alphanumeric/json?c=10&l=12&sym=T/')

passwords_json = JSON.parse(passwords_request.body)
passwords_obj = passwords_json["pws"]

puts passwords_obj
