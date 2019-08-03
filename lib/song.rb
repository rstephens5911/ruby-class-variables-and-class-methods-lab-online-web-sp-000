class Song
  attr_accessor :name, :artist, :genre

  # instance variables
  @name = nil
  @artist = nil
  @genre = nil

  # class variables:
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    value = 1
    @@genres.each do |key|
      if genre_count[key] == @@genres(key)
        value += 1
      else genre_count[@@genres(key)] = value
      end
    end
    genre_count
  end

end
