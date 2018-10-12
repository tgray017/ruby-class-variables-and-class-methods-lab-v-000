require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1 
    @@genres << @genre
    @@artists << @artist
    
#    @@genres.each do |genre| 
      if @@genre_count.keys.include?(@genre)
        @@genre_count[@genre] += 1
        binding.pry
      else
        @@genre_count[@genre] = 1
      end
      
#      binding.pry
#      @@genre_count.keys.each do |genre_key|
#        if genre_key == genre
#          @@genre_count[genre_key] += 1
#        else
#          @@genre_count[genre_key] = 1
#        end
#      end
#    end
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    @@genre_count
  end
    
end


piano_man = Song.new("Piano Man", "Billy Joel", "Classic Rock")
stairway_to_heaven = Song.new("Stairway to Heaven", "Led Zeppelin", "Classic Rock")
shame = Song.new("Shame", "The Avett Brothers", "Americana")


