class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    self.artists.count
  end

  def all_artist_names
    artists_array = []
    self.artists.each {|artist| artists_array << artist.name}
    artists_array
  end
end
