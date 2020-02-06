class Song
  attr_accessor :name, :genre
  attr_reader :artist 
  #attr_writer :artist
  @@all = []
  def initialize(name, artist = nil)
    @name = name
    self.artist=(artist)
    @@all << self.artist
  end
  
  def self.create(song)
    song = self.new(song)
    @@all << song 
    song
  end
  
  
  def artist=(artist)
    @artist = artist  
    artist.add_song(self)
  end
  
  # currently 35 passing with this code 
  
  
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
    