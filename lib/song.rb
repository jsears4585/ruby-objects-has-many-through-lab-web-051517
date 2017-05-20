class Song
  attr_accessor :name, :genre, :artist

  def initialize name, genre
    @name = name
    @genre = genre
    genre.add_song self   # adds self to genre store

                          # note that calls to add_song will not work
                          #   off of the instance variable, use
                          #   the obj via the param (i.e. "genre.")
  end
end
