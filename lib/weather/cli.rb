# #CLI Controller
 require 'pry'
 class Weather::CLI

    def call 
        puts "\nWelcome to Local Weather:\n"
        list_locations
        menu
    end
            

    def list_locations
     Weather::API.get_locations.select.with_index {|name,i| puts "#{i + 1}. #{name[:name]}"}
    end

    def menu

        input = "" 
        
        while input != "exit"
        puts "\nPlease select the number of a city to receive weather:\n"
           input = gets.strip
            if input.to_i - 1 <= Weather::Location.all.size
                condition = Weather::Location.all[input.to_i - 1]
                puts "The current weather conditions for #{condition.name} are:
                Current Temperature: #{condition.temp}F
                Feels like: #{condition.feels_like}F
                Minimum Temperature: #{condition.temp_min}F
                Maxium Temperarue: #{condition.temp_min}F
                Humidity: #{condition.humidity}%
                Wind Speed: #{condition.wind_speed} mph"
            
            puts "To exit this program please type exit or select another number to continue:"
            input = gets.strip
            if input.to_i - 1 > Weather::Location.all.size 
                puts "Please enter a VALID number from the list above."
                end
            end 
        end
    end
end
    
            


  

        
      
