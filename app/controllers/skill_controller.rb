class SkillController < ApplicationController
  def index
    @Skills = Skill.all
  end
end
