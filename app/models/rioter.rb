class Rioter < ApplicationRecord
  has_many :rioter_skills, dependent: :destroy
  has_many :skills, through: :rioter_skills
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :availability, presence: true
  validates :rate, presence: true
  validates_numericality_of :rate, greater_than: 0.0
  mount_uploader :picture, PictureUploader
  validates :description, presence: true
end
