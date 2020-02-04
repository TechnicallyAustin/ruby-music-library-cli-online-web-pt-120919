class Song
  attr_accessor :name, :genre, :artist
  #attr_writer :artist
  @@all = []
  def initialize(name, artist = Artist)
    @name = name
    @artist = artist
    @@all << self.artist
  end
  
  def self.create(song)
    song = self.new(song)
    @@all << song 
    song
  end
  
  def self.artist=(artist)
     @artist = artist.add_song(self)
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
    