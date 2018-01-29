class Song
  @@song_count = 0
  @@all_artists = []
  attr_reader :name, :artist, :genre

  def initialize(name)
    @name = name
    @@song_count += 1
  end

  def artist=(artist)
    @artist = artist
    @@all_artists << artist
  end

  def artists

end
