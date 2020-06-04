class Genre
    @@all = []
    attr_accessor :genre, :name
    def initialize(name)
        @genre = genre
        @name = name
        @@all << self
        
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select{|song| song.genre == self}
    end
    def artists
        songs.collect{|song|song.artist}
    end
end