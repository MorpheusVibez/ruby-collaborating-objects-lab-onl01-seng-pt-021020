class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << Artist.new
  end

  def self.all

  end

end
