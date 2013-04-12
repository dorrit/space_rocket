class RocketeersController < ApplicationController
  
  # before_filter :authenticate_rocketeer!

  def show
    #Needs to pass information about a selected rocketeer, not just current_rocketeer
    @rocketeer = current_rocketeer
  end

  def index
    @rocketeers = Rocketeer.all
  end

  def destroy
    @rocketeer = Rocketeer.find(params[:id])
    @rocketeer.destroy
    flash[:notice] = "Your rocketeer has been blown into pieces. It is gone!"
    redirect_to rocketeers_path
  end

end