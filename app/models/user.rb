class User < ApplicationRecord
  rolify 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :leave_requests, dependent: :destroy
  has_many :departments, dependent: :destroy
  has_many :entitlements
  has_one :employee, dependent: :destroy
  has_many :notifications, as: :recipient
end
