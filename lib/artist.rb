class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.all
  end

  def self.all
    @@all
  end

end
