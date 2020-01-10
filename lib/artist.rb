class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
  end 

  def songs
    Song.songs.select {|song| song.artist == self.name}
  end

  def add_song_by_name(name)
    song = Song.new(name)
    song.artist = self
  end

  def self.song_count
    Song.songs.length
  end

end