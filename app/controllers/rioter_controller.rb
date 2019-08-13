class RioterController < ApplicationController
  def index
    @rioters = Rioter.all
  end

  def show
    @rioter = Rioter.find(params[:id])
  end

  def new
    @rioter = Rioter.new
    @user = User.find(params[:user_id])
  end

  def create
    @rioter = Rioter.new(rioter_params)
    @rioter.user = User.find(params[:user_id])
    @rioter.save
    #needs a redirection
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
