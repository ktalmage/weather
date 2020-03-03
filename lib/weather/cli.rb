#CLI Controller
class Weather::CLI

    def call 
        puts 'Welcome to My Weather!' 
        puts "Please enter your location:"
        input = gets.strip
        puts "Your location is #{input}"        
    end
end         
    

    

        
      
