class Genre < ActiveRecord::Base
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs
  # need to eliminate artistgenres the above can be re-written as
  # has_man :artists, through: :songs
end
