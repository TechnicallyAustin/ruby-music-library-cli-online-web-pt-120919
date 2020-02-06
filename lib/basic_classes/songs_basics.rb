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
  

  
 def self.find_by_name(song_name)
   @found = Song.all.find {|song| song.name == song_name}
   @found
  #binding.pry
end

def self.find_or_create_by_name(song_name)
  self.find_by_name(song_name) || self.create(song_name)
end


  
  def self.new_from_filename(file_name)
   array = filename.split(" - ")

    song_name = array[1]
    artist_name = array[0]
    genre_name = array[2].split(".mp3").join

    artist = Artist.find_or_create_by_name(artist_name)
    genre = Genre.find_or_create_by_name(genre_name)
    self.new(song_name, artist, genre)
  
  end
  
  def self.create_from_filename(file_name)
    dotmp3 = file_name[-1,--4]
    file_name.delete(dotmp3)
    self.create(newf)
    save 
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
    