class Song
  attr_accessor :name, :artist
  
   def initialize(name)
    @name = name
  end
  
   def self.new_by_filename(file)
    full_title = file.split("-")
    song = Song.new(full_title[1])
    song.artist_name = full_title[0]
    song
  end
  
   def artist_name=(name)
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
    artist.add_song(self)
  end
end 