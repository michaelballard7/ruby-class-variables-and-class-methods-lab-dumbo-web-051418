class Song

  @@count = 0
  @@artists = [ ]
  @@genres = [ ]

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    genre_count = { }
    @@genres.each do |genre|
      genre_count[genre] ||= 0
      genre_count[genre] += 1
    end
    genre_count
  end

  def self.artist_count
   artists_count = { }
   @@artists.each do |artist|
     artists_count[artist] ||= 0
     artists_count[artist] += 1
   end
   artists_count
 end

end
