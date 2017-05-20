class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize name
    @name = name
    @songs = []
  end

  def add_song song
    song.artist = self  # assigns self as song owner,
                        # note that this requires attr_accessor in song
    @songs << song
  end

  def genres
    artist_genres = @songs.map{|song| song.genre}
  end
end
