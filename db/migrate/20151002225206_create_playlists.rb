class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.integer :created_by
      t.time :duration
      t.string :mood
      t.text :tracks
      t.string :title

      t.timestamps null: false
    end
  end
end
