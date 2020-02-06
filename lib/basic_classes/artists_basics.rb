 class Artist
   extend Concerns::Findable
   
  attr_accessor :name
  attr_reader :genre , :song 
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
    
    def add_song(song, genre = nil)
      
    if song.artist == nil
      song.artist = self
      song.genre = genre 
    else
      nil
    end
    
    if @songs.include?(song)
      nil
    else
      @songs << song
    end
    song

    end
    
    def genres
      new_arr = []
      songs.each do |song|
      if new_arr.include?(song.genre)
        nil
      else 
        new_arr << song.genre 
      end
    end
      new_arr
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