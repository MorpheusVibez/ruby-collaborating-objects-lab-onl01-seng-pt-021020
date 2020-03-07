class Song
  attr_accessor :name, :Artist
  @@all = []

  def initialize(name)
    @name = name
    @Artist = artist
    @@all << self
  end

  def self.all
    @@all
  end

end
