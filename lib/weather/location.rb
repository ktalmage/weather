class Weather::Location

            
attr_accessor :name, :temp, :feels_like, :temp_min, :temp_max, :humidity, :wind_speed

    @@all = []    

    def initialize(name)
         @name = name
         @@all << self
    end

    def self.all
         @@all
    end

    def self.temp
        @temp
    end

    def self.feels_like
        @feels_like
    end

    def self.temp_min
        @temp_min
    end

    def self.temp_max
        @temp_max
    end

    def self.humidity
        @humidity
    end

    def self.wind_speed
        @wind_speed
    end

end




