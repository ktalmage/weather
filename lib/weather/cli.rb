# #CLI Controller
 require 'pry'
 class Weather::CLI

    def call 
        puts "\nWelcome to Local Weather:\n"
        list_locations
        menu
        weather
    end
            

    def list_locations
     
    Weather::API.get_locations.select.with_index {|name,i| puts "#{i + 1}. #{name[:name]}"}

    end

    def menu

        @input = "" 
        while @input != "exit"
            puts "\nPlease select the number of a state to receive weather:\n"
            @input = gets.strip

            if @input.to_i < 0 || if @input.to_i > Weather::Location.all.size
                puts "\nPlease enter a VALID number based on the list above\n"
            
            elsif @input == "exit"
                puts "\nGoodbye.\n"
            end
        end
    end
  end 

    def weather
        Weather::Location.all.each do |condition|
            puts "The current weather conditions for #{condition.name} are:
                    Current Temperature: #{condition.temp}F
                    Feels like: #{condition.feels_like}F
                    Minimum Temperature: #{condition.temp_min}F
                    Maxium Temperarue: #{condition.temp_min}F
                    Humidity: #{condition.humidity}%
                    Wind Speed: #{condition.wind_speed} degrees"
        end
    end
       
end

  

        
      
