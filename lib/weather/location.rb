class Weather::Location

#location has : name, temp, weather, coord

attr_accessor :name

     @@all = []    

     def initalize(name)
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



