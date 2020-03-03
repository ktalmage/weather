require 'pry'
class Weather::CLI

    def call 
        puts 'Welcome to My Weather!'
        binding.pry
    end
end