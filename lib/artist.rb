class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
  song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def self.find_or_create_by_name(artist_name)
    if (self.artist_name.nil?)
      self.artist = Artist.new(artist_name)
    else
      self.artist.name = artist_name
    end
  end

end
