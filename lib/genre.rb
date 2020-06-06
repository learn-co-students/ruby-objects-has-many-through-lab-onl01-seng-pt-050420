class Genre
  @@all = []
  attr_accessor :artist, :song
  attr_reader :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    Song.all.select {|song| song}
  end
  def artists
    songs.collect {|song| song.artist}
  end
end