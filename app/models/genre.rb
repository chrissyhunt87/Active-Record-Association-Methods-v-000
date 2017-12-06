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
    self.artists.pluck(:name)
    # artist_names = []
    # self.artists.each {|a| artist_names << a.name}
    # artist_names
  end
end
