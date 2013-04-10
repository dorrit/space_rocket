class RocketeersController < ApplicationController
  
  # before_filter :authenticate_rocketeer!

  def show
    @rocketeer = current_rocketeer
  end

  def index
    @rocketeers = Rocketeer.all
  end

end