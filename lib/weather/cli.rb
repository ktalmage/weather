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
        binding.pry
        end
    # end


end         
    

  

        
      
