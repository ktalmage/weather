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
        # iterates through array of locations
        puts "Please enter your location:"
        selected_location = gets.strip
        # if valid_input(selected_location,@locations)
            # returns puts "You've selected city_name, state. 
            #              "Please select the weather information you would like from the following options: 
                # and returns either: 1) Current weather 2) Tomorrow's weather 3) 5 day forecast
            #else 
                # "Please enter a zip code for a US city"
        end
     end


end         
    

  

        
      
