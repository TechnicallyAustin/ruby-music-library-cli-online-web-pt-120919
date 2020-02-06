class Genre
  attr_accessor :name, :artist, :song
  @@all = []
  def initialize(name)
    @name = name
    @@all << self 
    @songs = []
  end
  
  def self.create(song)
    song = self.new(song)
    @@all << song 
    song
  end
    
  
  def songs
    @songs
  end
  
  def save 
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    self.all.clear
  end
  
end