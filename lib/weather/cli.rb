#CLI Controller
require 'pry'
class Weather::CLI

    def call 
         puts "\nWelcome to My Weather! \n"
         puts "\nSelect a number from the list of locations. To exit 
this program please type 'exit'\n"
         list_locations
         input = gets.strip
         if input == "exit"
          puts "\nGoodbye!\n"
         end
         
     end  

    

    def list_locations
     resp = RestClient.get("http://api.openweathermap.org/data/2.5/find?lat=40.7128&lon=-74.0060&cnt=20&units=imperial&APPID=cdf9cc554cd1d376b2dbcf0dd7bcf3f6")
     resp_hash = JSON.parse(resp.body, symbolize_names:true)
     weather_array = resp_hash[:list]

     puts weather_array.collect.with_index(1) {|name,i| "#{i}. #{name[:name]}"}

    end

end         

    

  

        
      
