class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end 

  def self.all 
    @@all 
  end 

  def songs 
    Song.all { |song| song.genre == self } 
  end 

  def artists 
    songs.map(&:artist) 
  end 

  def add_song(song) 
    songs.push(song)
  end
end 