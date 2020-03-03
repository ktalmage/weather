class Weather::City

attr accessor :city_name, :state, :zip

    @@all = []

    def initialize(city_name,zip)
        
        @city_name = city_name
        @zip = zip
        @state = state
    end
end

city_1 = Weather::City.new("Astoria","11105")

puts city_1

