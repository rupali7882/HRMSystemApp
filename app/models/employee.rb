class Employee < ApplicationRecord
	belongs_to :user
	validates :fname, presence: true
	def fullname
	 return	"#{self.fname} #{self.middle_name}  #{self.lname}"
	end
end

