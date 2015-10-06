class Playlist < ActiveRecord::Base

def self.search(search)
  where("mood LIKE ?", "%#{search}%") || (where "id LIKE ?", "%#{search}%") 
end

end
