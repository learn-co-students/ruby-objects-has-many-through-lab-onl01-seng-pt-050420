class Song   

    @@all = []

    attr_accessor  :name, :artist,:genre 

                         #belongs to a artist
                         #belongs to a genre

    def initialize(name, artist, genre) 
        @name = name  
        @artist = artist 
        @genre = genre 
        @@all << self 
    end

    def self.all 
        @@all 
    end 

end