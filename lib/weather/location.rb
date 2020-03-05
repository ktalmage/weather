class Weather::Location

attr_accessor :city_name, :state

    @@all = []    

    def iniitalize(city_name)
        @city_name = city_name
        @@all << self
    end

    def self.all
        @@all
    end
end





