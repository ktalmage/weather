require 'pry'
require 'rest-client'
require 'json'
require_relative 'location'

class Weather::API 
    attr_accessor :location, :resp

    def initialize(name)
        @location = Weather::Location.new
        @location.name = name
        @resp = RestClient.get("http://api.openweathermap.org/data/2.5/find?lat=40.7128&lon=-74.0060&cnt=20&units=imperial&APPID=cdf9cc554cd1d376b2dbcf0dd7bcf3f6")
        @resp_array = JSON.parse(resp.body, symbolize_names:true)
        binding.pry
    end
 
# cities = RestClient.get("https://gist.githubusercontent.com/Miserlou/c5cd8364bf9b2420bb29/raw/2bf258763cdddd704f8ffd3ea9a3e81d25e2c6f6/cities.json")

end

   

# resp_hash = JSON.parse(resp.body, symbolize_names:true)
# weather_array = resp_hash[:list]

# puts weather_array.collect.with_index(1) {|name,i| "#{i}. #{name[:name]}"}




