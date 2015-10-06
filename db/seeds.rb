# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)




playlists = Playlist.create([
	{ created_by: 'Jamie', duration: '45', mood: 'happy'},
	{ created_by: 'Tika', duration: '25', mood: 'pensive'},
	{ created_by: 'Nathan', duration: '30', mood: 'zany'},
	{ created_by: 'Nick', duration: '12', mood: 'curious'},
	{ created_by: 'Justin C', duration: '33', mood: 'sad'},
])

  # create_table "playlists", force: :cascade do |t|
  #   t.integer  "created_by"
  #   t.time     "duration"
  #   t.string   "mood"
  #   t.text     "tracks"
  #   t.string   "title"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.string   "genre"
  #   t.text     "names"
  # end



