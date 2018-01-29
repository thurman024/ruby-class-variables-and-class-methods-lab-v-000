class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def artists
    unique_artists = []
    @@artists.each do |a|
     if !unique_artists.include(a)
       unique_artists << a
     end
   end
    unique_artists
  end

  def genres
    unique_genres = []
    @@genres.each do |g|
     if !unique_genres.include(g)
       unique_genres << g
     end
   end
    unique_genres
  end

  def count
    @@count
  end
end
