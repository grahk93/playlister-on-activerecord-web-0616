class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

# #Artist Associations can build a song
#   def build(song_name)
#     song = Song.new(name: song_name)
#   end

end
