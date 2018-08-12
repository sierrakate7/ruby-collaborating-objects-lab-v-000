class Artist
  attr_accessor :name, :songs
 
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.name = name
    artist
  end
  
  def self.find(name)
    self.all.detect { |artist| artist.name == name }
  end
  
   def self.find_or_create_by_name(name)
    self.find(name) || self.create(name)
  end
  
   def add_song(song)
    @songs << song
    song.artist = self 
  end
  
   def print_songs
    self.
  end
  
   def save
    @@all << self
  end
  
   def songs
    @songs
  end
  
end 