# #CLI Controller
 require 'pry'
 class Weather::CLI

# #     def initialize
# #         puts "\nWelcome to My Weather! \n"
# #         puts "\nSelect a number from the list of locations below. To exit 
# # this program please type 'exit'\n"
# #         # data = 
# #     end
    
    def call 
         Weather::API.get_locations
         binding.pry
         puts "\nSelect a number from the list of locations below. To exit 
 this program please type 'exit'\n"
          list_locations
         input = gets.strip
          if input == "exit"
           puts "\nGoodbye!\n"
          end
        end
         
      
def list_locations
     
    binding.pry
     puts weather_array.collect.with_index(1) {|name,i| "#{i}. #{name[:name]}"}
    
    end

 end         

    

  

        
      
