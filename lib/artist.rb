class Artist
  attr_accessor :name, :songs, :genres
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
    @songs = []
  end

  def self.all
    @@all
  end

  def songs
    song = Artist.songs
    song.collect {|s| s.artist = self}
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end
end
