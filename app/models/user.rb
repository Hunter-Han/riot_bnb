class User < ApplicationRecord
  has_many :rioters, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews

  validates :email, presence: true
  validates :encrypted_password, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
