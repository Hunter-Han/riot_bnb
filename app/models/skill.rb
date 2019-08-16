class Skill < ApplicationRecord
  has_many :rioter_skills, dependent: :destroy
  has_many :rioters, through: :rioter_skills

  SKILLS_LIST = Skill.all
  validates :name, presence: true
end
