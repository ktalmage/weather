class Weather::Location

attr_accessor :city_name, :state, :zip, :url

    def self.data
        
        self.retrieve_data
    end

    def self.retrieve_data
        
       location_data = []
       
       location_data << self.pull_weather
       # I want this to go to api website, extract attributes, instantiate a location based on the user input
    
       location_data
    end

    def self.pull_weather
    
    end
 
end





