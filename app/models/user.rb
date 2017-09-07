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

  has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\z/
end
