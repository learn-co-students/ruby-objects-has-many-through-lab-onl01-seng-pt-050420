class Genre
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.artists
        @@all.songs.select {|song| songs.artist}
    end

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.collect {|song| song.artist}
    end
    
end