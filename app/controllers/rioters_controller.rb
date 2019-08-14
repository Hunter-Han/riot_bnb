class RiotersController < ApplicationController
  def index
    @rioters = Rioter.all
  end

  def show
    @rioter = Rioter.find(params[:id])
  end

  def new
    @rioter = Rioter.new
    @user = current_user
  end

  def create
    @rioter = Rioter.new(rioter_params)
    @rioter.user = current_user
    @rioter.save

    redirect_to root_path(@rioter)
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
    params.require(:rioter).permit(:name, :availability, :rate, :picture, :description)
  end
end
