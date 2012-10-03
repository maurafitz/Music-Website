class AddGenreIdToMusicGroup < ActiveRecord::Migration
  def change
    add_column :music_groups, :genre_id, :integer
  end
end
