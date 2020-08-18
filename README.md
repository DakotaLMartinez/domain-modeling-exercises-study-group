# Task #1: Design an application where we can keep track of Songs and their Genres

Songs should be able to have more than one genre
genres should have many songs

### How do we create a many to many relationship



user creates posts
# one to many
```
class User 
  has_many :posts
end
class Post
  belongs_to :user
end
```

user likes many other posts
```
class User
  has_many :likes
end
class Like 
  belongs_to :user
  belongs_to :post
end
```
Say we want to have both the one to many relationship (the author relationship) and the many to many one (the liked relationship)

```
class User 
  has_many :posts
  has_many :likes
  has_many :liked_posts, through: :likes, source: :post
end
class Like 
  belongs_to :user
  belongs_to :post
end
class Post
  belongs_to :user
  has_many :likes 
  has_many :liked_users, through: :likes, source: :user
end
```

Domain model for Artists, Genres, Songs and SongGenres:

```ruby
class Artist < ActiveRecord::Base 
  has_many :songs#, foreign_key: 'artist_id'
  has_many :genres, through: :songs
end

class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
end

class Song < ActiveRecord::Base
  has_many :song_genres
  has_many :genres, through: :song_genres
  belongs_to :artist#, foreign_key: :artist_id, class_name: 'Artist', primary_key: 'id'
end

class SongGenre < ActiveRecord::Base
  belongs_to :song
  belongs_to :genre
end
```

Add seed data
