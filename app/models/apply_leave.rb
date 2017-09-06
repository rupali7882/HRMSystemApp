class ApplyLeave < ApplicationRecord
	belongs_to :user , optional: true
end
