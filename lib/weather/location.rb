class Weather::Location

attr_accessor :city_name, :state, :zip

    # @@all = []

    def initialize(city_name,zip) # I want this to instantiate a location based on the user input
        
        @city_name = city_name
        @zip = zip
        @state = state
    end

    def self.all
        @@all
    end


end

city_1 = Weather::Location.new("Astoria","11105")



