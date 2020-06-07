class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # knows about all artist instances
  def self.all
    @@all
  end

  # returns all songs associated with this Artist
  def songs
    Song.all.select { |song| song.artist == self }
  end

  # given a name and genre, creates a new song associated with that artist
  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  # has many genres, through songs
  def genres
    songs.map { |song| song.genre }
  end

end
