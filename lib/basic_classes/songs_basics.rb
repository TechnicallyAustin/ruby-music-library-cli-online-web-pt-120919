require'pry'
class Song
  attr_accessor :name
  attr_reader :artist, :genre 
  #attr_writer :artist
  @@all = []
  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.artist=(artist)
    self.genre=(genre)
    @@all << self 
  end
  

  
  def self.create(song)
    
    song = self.new(song)
  end
  
  def genre=(genre)
    if genre != nil
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end
 end
  
  def artist=(artist)
    if artist != nil
    @artist = artist
    artist.add_song(self)
  end
    
  end
  
  # currently 35 passing with this code 
  
  
 def self.find_by_name(song_name)
   @found = Song.all.find {|song| song.name == song_name}
   @found
  #binding.pry
end

def self.find_or_create_by_name(song_name)
  if @found
    @found
  else
    self.create(song_name)
    @found.name
    
    #binding.pry 
  end
 
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
    