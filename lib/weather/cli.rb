# #CLI Controller
 
 class Weather::CLI

    def call 
        puts "\nWelcome to Local Weather:\n"
        list_locations
        menu
    end
            
    def list_locations
        Weather::API.get_locations.each_with_index {|name,i| puts "#{i + 1}. #{name[:name]}"}
    end

    def menu
        input = "" 
        while input != "N" 
            puts "\nPlease select a number from the list above:\n"
            input = gets.strip
                
            if input.to_i <= Weather::Location.all.size  && input.to_i > 0
                condition = Weather::Location.all[input.to_i - 1]
                
                puts "The current weather conditions for #{condition.name} are:
                Current Temperature: #{condition.temp}F
                Feels like: #{condition.feels_like}F
                Minimum Temperature: #{condition.temp_min}F
                Maximum Temperature: #{condition.temp_max}F
                Humidity: #{condition.humidity}%
                Wind Speed: #{condition.wind_speed} mph
                Warmer Than: #{condition.warmer_than} F"
                puts "\nWould you like information from other cities(Y/N)?\n"
                answer = gets.strip
            
            if answer == "N".downcase
                puts "Goodbye"
                        break
                    end
                end
            end
        end
    end
           


  

        
      
