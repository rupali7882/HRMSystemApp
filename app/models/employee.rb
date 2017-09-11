class Employee < ApplicationRecord
	def fullname
	 return	"#{self.fname} #{self.middle_name}  #{self.lname}"
	end
end

