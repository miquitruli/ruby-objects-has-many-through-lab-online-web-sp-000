class Genre
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
    @artist = []
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end

  def artists
    @artist
  end


end
