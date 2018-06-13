class Artist < ActiveRecord::Base
  has_many :songs

  def song_count_text
    "#{self.song_count} #{'song'.pluralize(self.song_count)}"
  end

  def song_count
    songs.count
  end
end
