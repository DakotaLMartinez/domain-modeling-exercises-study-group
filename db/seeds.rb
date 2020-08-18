Artist.destroy_all
Song.destroy_all
Genre.destroy_all
SongGenre.destroy_all


artists = [
  {name: "U2"},
  {name: "Blues Brothers"},
  {name: "Sam & Dave"},
  {name: "Dead Kennedys"}
]

genres = [
  {name: "Rock"},
  {name: "Metal"},
  {name: "Pop"}
]

# this assigns all of these variables equal to the artists that are stored in the array.
u2, blues_bros, sam_and_dave, dead_kennedys = artists.map do |artist_attributes|
  Artist.create(artist_attributes)
end

rock, metal, pop = genres.map do |genre_attributes|
  Genre.create(genre_attributes)
end

u2.songs.create(name: "Beautiful Day")
u2.songs.create(name: "Song for Someone")

# song_genres = [

# ]

# songs = [

# ]



# songs.each do |song_attributes|
#   Song.create(song_attributes)
# end



# song_genres.each do |song_genre_attributes|
#   SongGenre.create(song_genre_attributes)
# end

