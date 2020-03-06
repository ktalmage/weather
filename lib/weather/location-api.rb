require 'pry'
require 'rest-client'
require 'json'
require_relative 'location'
class Weather::API 
    

    def self.get_locations
        resp = RestClient.get("http://api.openweathermap.org/data/2.5/find?lat=40.7128&lon=-74.0060&cnt=20&units=imperial&APPID=cdf9cc554cd1d376b2dbcf0dd7bcf3f6")
        resp_hash = JSON.parse(resp.body, symbolize_names:true)
        location_array = resp_hash[:list]
        location_array.each do |city|
            name = city[:name]
            temp = city[:main][:temp]
            feels_like = city[:main][:feels_like]
            temp_min = city[:main][:temp_min]
            temp_max = city[:main][:temp_max]
            humidity = city[:main][:humidity]
            wind_speed = city[:wind][:speed]
            location = Weather::Location.new(name)
            location.temp = temp
            location.feels_like = feels_like
            location.temp_min = temp_min
            location.temp_max = temp_max
            location.humidity = humidity
            location.wind_speed = wind_speed
            
        end
    end
 
# cities = RestClient.get("https://gist.githubusercontent.com/Miserlou/c5cd8364bf9b2420bb29/raw/2bf258763cdddd704f8ffd3ea9a3e81d25e2c6f6/cities.json")

end

   






