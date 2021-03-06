class RiotersController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @rioters = Rioter.all

    render layout: "home"

    @transparent_navbar = true

  end

  def show
    @rioter = Rioter.find(params[:id])
    @booking = Booking.new
  end

  def new
    @rioter = Rioter.new
    @user = current_user
  end

  def create
    @rioter = Rioter.new(rioter_params)
    @rioter.user = current_user
    if @rioter.save
      skills = Skill.find(params[:post][:skill_ids])
      skills.each do |skill|
        RioterSkill.create(rioter: @rioter, skill: skill)
      end
      redirect_to root_path(@rioter)
    else
      render :new
    end
  end

  def edit
    @rioter = Rioter.find(params[:id])
  end

  def update
    @rioter = Rioter.find(params[:id])
    @rioter.update(params[:rioter])
  end

  def destroy
    @rioter = Rioter.find(params[:id])
    @rioter.destroy
    #needs redirection
  end

  def rioter_params
    # params.require(:rioter).permit(:name, :rate, :picture, :description, skill_ids: [])
    params.require(:rioter).permit(:name, :rate, :picture, :description, :skill_ids)
  end
end
