#CLI Controller
require 'pry'
class Weather::CLI

    def call 
         puts "\nWelcome to My Weather!\n" 
         
         gets_locations
         get_user_location
    end  

    def gets_locations
        #from API call or scraped site 
        @locations = ["New York","Chicago","Tampa","Charlotte","New Orleans"]
        
    end

    def get_user_location
        # Prompts user for input
        puts "Please enter your location:"
        selected_location = gets.strip
        
         if valid_input(selected_location,@locations)
              puts "You've selected city_name, state." 
                   "Please select the weather information you would like from the following options:"
                   "1) Current weather"
                   "2) Tomorrow's weather"
                   "3) 5 day forecast"
         else
              puts "please enter a valid US zip code"
                
        end
    end
     

    def valid_input(input,data)
         input.to_i <= data.length  && input.to_i > 0
    end
end         
    

  

        
      
