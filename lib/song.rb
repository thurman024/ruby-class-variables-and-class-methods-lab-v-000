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
    @@artists.select {|a| !unique_artists.include(a) unique_artists << a}
    unique_artists
  end

  def count
    @@count
  end
end
