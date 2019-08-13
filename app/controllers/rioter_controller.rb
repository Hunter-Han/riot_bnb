class RioterController < ApplicationController
  def index
    @rioters = Rioter.all
  end
end
