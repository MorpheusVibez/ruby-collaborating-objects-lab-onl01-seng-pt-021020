
class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    
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
