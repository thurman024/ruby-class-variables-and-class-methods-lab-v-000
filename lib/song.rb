class Song
  @@count = 0
  @@all_artists = []
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@all_artists << artist
    @genre = genre
    @@song_count += 1
  end

  def artists
    @@all_artists
  end
end
