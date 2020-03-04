require 'pry'
require 'rest-client'
require 'json'

puts "Please enter a US city:"
user_input = gets.strip
resp = RestClient.get("http://api.openweathermap.org/data/2.5/weather?q=#{user_input},us&units=imperial&APPID=cdf9cc554cd1d376b2dbcf0dd7bcf3f6")
resp_hash = JSON.parse(resp.body, symbolize_names:true)
resp_hash[:weather]


binding.pry
true