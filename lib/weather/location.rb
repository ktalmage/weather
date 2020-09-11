class Weather::Location
require 'pry'
            
attr_accessor :name, :temp, :feels_like, :temp_min, :temp_max, :humidity, :wind_speed, :warmer_than

    @@all = []    

    def initialize(name)
         @name = name
         @@all << self
    end

    def self.all
          @@all
    end

    def self.warmer_than(temp)
        self.all.select do |location| 
        location.temp > temp
        end
    end
end   





