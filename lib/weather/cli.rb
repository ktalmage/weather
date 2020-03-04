#CLI Controller
class Weather::CLI

    def call 
        puts 'Welcome to My Weather!' 
        puts "Please enter your location:"
        gets_locations
        input = gets.strip
        puts "Your location is #{input}"        
    end

    def gets_locations
        #from API call or scraped site 
        @locations = ["New York","Chicago","Tampa","Charlotte","New Orleans"]
    end

    def get_user_location
        # iterates through array of locations
        @locations.each do |location|
            puts location
            binding.pry
        end
    end

end         
    

    

        
      
