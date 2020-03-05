require 'pry'
require 'rest-client'
require 'json'
require_relative 'location'


 
# cities = RestClient.get("https://gist.githubusercontent.com/Miserlou/c5cd8364bf9b2420bb29/raw/2bf258763cdddd704f8ffd3ea9a3e81d25e2c6f6/cities.json")
# cities_array = JSON.parse(cities.body,symbolize_names:true)

# keys_to_extract = [:city,:lattitude,:longitude]
# new_cities_array = cities_array.map do |k|
#     k.select {|k,_| keys_to_extract.include? k}
# end
   


resp = RestClient.get("http://api.openweathermap.org/data/2.5/find?lat=40.7128&lon=-74.0060&cnt=50&units=imperial&APPID=cdf9cc554cd1d376b2dbcf0dd7bcf3f6")
resp_hash = JSON.parse(resp.body, symbolize_names:true)
weather_array = resp_hash[:list]

puts weather_array.collect {|name| "#{name[:name]}"}

binding.pry


