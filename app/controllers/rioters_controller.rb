class RiotersController < ApplicationController
  def index
    @rioters = Rioter.all
    render layout: "home"
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
        skill = Skill.find(params[:rioter][:skill_ids].last.to_i)
        RioterSkill.create(rioter: @rioter, skill: skill)
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
    params.require(:rioter).permit(:name, :rate, :picture, :description, :skill_ids)
  end
end
