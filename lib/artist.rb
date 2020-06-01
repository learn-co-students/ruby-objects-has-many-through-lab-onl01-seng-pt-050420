require 'pry'

class Artist

    attr_accessor :name, :all, :song, :all_songs

    @@all = []
    @@artists_songs_and_genres = {}

    def initialize(name)
        @name = name
        @@all << self
        @all_songs = []
    end

    def self.all
        @@all
    end

    def artists_songs_and_genres(everything)
        @@artists_songs_and_genres = everything
    end

    def all_songs(song)
        @all_songs << song
    end

    def songs
        @all_songs
    end

    def new_song(name, genre)
        song = Song.new(name, self, genre)
        song
    end

    def genres
        @@artists_songs_and_genres[@name][0][:genre]
    end


end