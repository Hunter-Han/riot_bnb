class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :rioter

  validates :location, presence: true
  validates :start, presence: true
  validates :end, presence: true
end
