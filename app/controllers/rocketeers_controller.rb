class RocketeersController < ApplicationController

  def show
    @rocketeer = Rocketeer.find(params[:id])

  end

  def index
    @rocketeers = Rocketeer.all
  end


end
