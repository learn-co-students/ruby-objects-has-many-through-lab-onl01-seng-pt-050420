class Artist
    attr_accessor :name, :artist, :genre
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def songs
       Song.all.select {|name| name.artist == self}
    end

    def genres
        songs.collect {|song| song.genre}
      end


    def new_song(date, genre)
        Song.new(date, self, genre)
    end

end
