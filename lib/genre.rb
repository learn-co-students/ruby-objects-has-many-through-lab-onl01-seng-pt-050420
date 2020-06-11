class Genre  
  attr_accessor :name, :genre 
  
  @@all = []
  
    def initialize(name)
      @name = name 
      @genre = genre  
      @@all << self
    end
  
  def self.all
    @@all 
   end    
    
    def songs  
    Song.all { |song|song.genre == self}
    end
  
  def artists
    songs.collect{ |song|song.artist}
  end
  
  
  
end
  
  