class Telefon < ActiveRecord::Base
	belongs_to :producent
<<<<<<< HEAD
=======
def self.search(search)
  if search
    where('model LIKE ?', "%#{search}%")
  else
    scoped
  end
end


>>>>>>> fd9cc0e681167e6aac3cf3aa587040835c712581
end
