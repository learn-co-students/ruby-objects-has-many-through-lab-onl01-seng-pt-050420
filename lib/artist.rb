class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    
    @name = name
    save
    
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    
    Song.new(song, self, genre)
    
  end
  
  def songs
    
    Song.all.select do |song|
      song.artist == self
    end
    
  end
  
  def genres
    
    songs.collect do |song|
      
      song.genre
      
    end
    
  end
  
end