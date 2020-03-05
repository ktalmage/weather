class Weather::Location

#location has : name, temp, weather, coord
            
attr_accessor :name, :temp, :feels_like, :temp_min, :temp_max, :humidity, :wind_speed

     @@all = []    

     def initialize(name)
         @name = name
         @@all << self
     end

     def self.all
         @@all
     end

     def self.find_by_name(name)
         @@all.detect {|location| location.name == name}
     end
end



