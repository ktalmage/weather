require 'pry'
require 'rest-client'
require 'json'
require_relative 'location'


resp = RestClient.get("http://api.openweathermap.org/data/2.5/find?lat=40.7128&lon=-74.0060&cnt=50&units=imperial&APPID=cdf9cc554cd1d376b2dbcf0dd7bcf3f6")
resp_hash = JSON.parse(resp.body, symbolize_names:true)
resp_hash[:id]


binding.pry


true