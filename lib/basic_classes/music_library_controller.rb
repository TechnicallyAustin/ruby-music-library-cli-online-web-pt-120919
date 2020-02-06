class MusicLibraryController
  attr_accessor :path 
  def initialize(path)
    @path = path
    path = MusicImporter.new(path = './db/mp3s')
    MusicImporter.import
  end
  
  def call
    #welcomes user
    #asks for input
    #loops and ask for input until exit is typed
  end
  
end