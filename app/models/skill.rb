class Skill < ApplicationRecord
  has_many :rioter_skills, dependent: :destroy

  validates :name, presence: true
end
