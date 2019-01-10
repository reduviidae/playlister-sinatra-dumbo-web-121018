class Artist < ActiveRecord::Base
  has_many :genres, through: :artistgenres
  has_many :songs
end
