class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  # has many artists, through songs
  def artists
    songs.map { |song| song.artist }
  end

  def self.all
    @@all
  end

end
