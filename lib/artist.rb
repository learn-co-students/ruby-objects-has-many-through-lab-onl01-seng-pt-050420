class Artist  

    @@all = []

    attr_accessor :name 

    def initialize(name) 
        @name = name  
        @@all << self
    end 

    def self.all 
        @@all 
    end 
    
    def songs # returns all songs associated with this Artist
        Song.all.select {|song| song.artist == self} 
    end  

    def new_song(name, genre) # given a name and genre, creates a new song associated with that artist
        Song.new(name, self, genre) 
    end 

    def genres # has many genres, through songs
        songs.map do |song| 
            song.genre 
        end 
    end



end