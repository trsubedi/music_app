module PlaylistsHelper

	def url_toArray

    	@playlists = Playlist.all
    	@track_url_array = []
    	@playlists.each do |i|
	      tempArr =i.tracks.split(",")
	      tempArr.each do |url|
	      	@track_url_array << url
	      end
    	end
    	return @track_url_array
	end	

	def name_toArray

    	@playlists = Playlist.all
    	@track_name_array = []
    	@playlists.each do |i|
	      tempArr =i.names.split(",")
	      tempArr.each do |name|
	      	@track_name_array << name
	      end
    	end
    	return @track_name_array
	end	
end