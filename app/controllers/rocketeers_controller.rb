class RocketeersController < ApplicationController
  
  # before_filter :authenticate_rocketeer!

  def show
    @rocketeer = Rocketeer.find(params[:id])

  end

  def index
    @rocketeers = Rocketeer.all
  end


end
