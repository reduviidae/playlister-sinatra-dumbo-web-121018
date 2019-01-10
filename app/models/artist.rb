class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs
  # need to delete artistgenres, can be re-written as
  # has_many :genres, through: :songs
end
