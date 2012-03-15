class Usuario < ActiveRecord::Base

	def self.search(search)
		if search
			find(:all, :conditions => ['nombre LIKE ?',"%#{search}%"])
		else
			find(:all)
		end
	end
end
