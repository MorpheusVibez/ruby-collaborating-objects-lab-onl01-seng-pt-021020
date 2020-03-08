
class Song
  attr_accessor :name, :artist, :artist_name

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @artist_name = artist_name
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name(name)
    # artist = Artist.find_or_create_by_name(name)
    # artist.add_song(name)
    # artist
  end

  def self.new_by_filename(filename)
    files = filename.split(" - ")
    song = self.new(files[1])
    artist = Artist.find_or_create_by_name(files[0])
    song.artist = artist
    artist.add_song(song)
    song
  end
end
