module PlaylistsHelper

	def url_toArray(plist)
    	@track_url_array = []
    	plist.each do |i|
	      tempArr =i.tracks.split(",")
	      tempArr.each do |url|
	      	@track_url_array << url
	      end
    	end
    	return @track_url_array
	end	

	def name_toArray(plist)
    	@track_name_array = []
    	plist.each do |i|
	      tempArr =i.names.split(",")
	      tempArr.each do |name|
	      	@track_name_array << name
	      end
    	end
    	return @track_name_array
	end	
end