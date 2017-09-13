class LeaveRequest < ApplicationRecord
    belongs_to :user
    validates :days,:start_date,:end_date, :presence => true
    enum status: [ :approved, :pending, :rejected ]
    enum gender: [:male, :female]
end