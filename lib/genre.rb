class Genre
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.search{|song| song.genre == self}
  end

  def artists
    self.all.map{|genre| genre.artist == self}
  end 

end
