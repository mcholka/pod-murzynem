class Telefon < ActiveRecord::Base
	belongs_to :producent
def self.search(search)
  if search
    where('model LIKE ?', "%#{search}%")
  else
    scoped
  end
end


end
