
class MusicImporter
  attr_accessor :filepath, :path, :files
  attr_reader :song, :artist, :genre 
  def initialize(path)
    @path = path
    @files = files 
  end
  
def files
    @files ||= Dir.glob("#{@path}/*.mp3").collect{ |file| file.gsub("#{@path}/", "") }
  end
  
  def import 
    self.files.each do |file_name|
      Song.new(file_name)
    end
  end

  

  
  
  
end