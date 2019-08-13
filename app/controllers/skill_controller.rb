class SkillController < ApplicationController
  def index
    @skills = Skill.all
  end

  def new
    @rioter = Rioter.find(params[:rioter_id])
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.rioter = Rioter.find(params[:rioter_id])
    @skill.save
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.update(params[:skill])
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
  end

  private

  def skill_params
    params.require(:skill).permit(:name)
  end
end
