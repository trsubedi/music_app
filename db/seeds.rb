# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


moods = ["happy", "sad", "angry", "pensive", "zany"]



playlists = Playlist.create([
	{ created_by: 'Jamie', duration: '45', mood: 'happy'},
	{ created_by: 'Tika', duration: '45', mood: 'happy'},

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



