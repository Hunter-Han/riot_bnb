class Skill < ApplicationRecord
  has_many :rioter_skills, dependent: :destroy
  has_many :rioters, through: :rioter_skills

  validates :name, presence: true
end
