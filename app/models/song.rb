class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def self.build_genre(genre_name) #giving a song the right genre 
    Genre.find_by(genre_name).songs << self 
  end
  
end