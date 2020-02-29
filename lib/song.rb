require 'pry'

class Song 
  
  attr_accessor :name, :artist
  @@all = []
  
      
      
       def initialize(name)
        @name = name
     @@all << self
       end
       def self.all
         @@all
       end
       
      def self.new_by_filename(item)
        
       song_name = item.split(" - ")[1]
      artistname = item.split(" - ")[0] 
       
      song = self.new (song_name)
      song.artist_name = artistname
      song 
         # genre_mp3 = result[2].split('.')
      # genre = genre_mp3[0]
      # mp3 = genre_mp3[1]
      end
      
      def artist_name=(name)
        self.artist= Artist.find_or_create_by_name(name)
       # binding.pry
        self.artist.add_song(self)
        #binding.pry
      end
      
    
      
      
     end