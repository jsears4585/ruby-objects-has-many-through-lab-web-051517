class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize name
    @name = name
    @songs = []
  end

  def add_song song
    @songs << song
  end

  def artists
    genre_artists = @songs.map{|song| song.artist}
  end
end
