class AddNamesToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :names, :text
  end
end
