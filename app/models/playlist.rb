class Playlist < ActiveRecord::Base

def self.search(search)
  where("mood LIKE ?", "%#{search}%") 
end

end
