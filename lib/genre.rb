class Genre
   attr_accessor :name

   @@all = []
   def initialize (name)
      @name = name
      @@all << self
   end

   def songs
      Song.all.select{|x| x.artist}
   end

   def self.all
      @@all
   end

   def artists
      Song.all.collect {|x| x.artist}
   end
end
