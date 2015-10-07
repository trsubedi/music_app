class AddGenreToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :genre, :string
  end
end
