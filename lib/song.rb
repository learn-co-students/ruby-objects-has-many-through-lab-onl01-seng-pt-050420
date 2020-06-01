class Song

    attr_accessor :name

    @@all = []
    @@all_songs = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@all_songs[artist.name] = [{
            :song => name,
            :genre => genre.name
        }]
        @artist.artists_songs_and_genres(@@all_songs)
        @artist.all_songs(self)
    end

    def self.all
        @@all
    end



end