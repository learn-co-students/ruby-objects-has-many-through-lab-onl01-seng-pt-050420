class Song 
    attr_accessor :name, :genre, :artist
   
    @@all = []

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist
        @genre = genre
        @@all << self 
    end 

    def self.all 
        @@all 
    end 
 
    def genre
        @genre
        #Song.new {|song| song.genre == self}
    end 

    def artist
        @artist
        #Song.new {|song| song.artist == self}
    end 
end 