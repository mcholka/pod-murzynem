class Telefon < ActiveRecord::Base
	belongs_to :producent
def self.search(search)
  if search
    find(:all, :conditions => ['model LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
