class Song < ActiveRecord::Base
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist#, foreign_key: :artist_id, class_name: 'Artist', primary_key: 'id'
end