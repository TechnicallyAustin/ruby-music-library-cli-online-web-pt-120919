require 'pry'
class Genre
  attr_accessor :name
  attr_reader :artist, :song 
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
  
   def artists
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.artist)
        nil
      else
        @new_array << song.artist
      end
    end
    @new_array
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