class Weather::Location

attr_accessor :city_name, :state, :zip, :url

    @@all = []    

    def iniitalize(city_name,url)
        @name = name
        @url = url
        @@all << self
    end

    def self.all
        @@all
    end
end





