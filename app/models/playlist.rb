class Playlist < ActiveRecord::Base

def self.search(search)

	if search.to_i > 0
		where("duration LIKE ?", "%#{search}%") 
	else
	  where("mood LIKE ?", "%#{search}%") 
	end

end

end


