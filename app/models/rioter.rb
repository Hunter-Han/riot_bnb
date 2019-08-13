class Rioter < ApplicationRecord
  has_many :rioter_skills, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :availability, presence: true
  validates :rate, presence: true
  mount_uploader :picture, PictureUploader
  validates :description, presence: true
end
