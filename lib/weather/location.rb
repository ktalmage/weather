class Weather::Location

attr_accessor :name

    @@all = []    

    def iniitalize(name)
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



