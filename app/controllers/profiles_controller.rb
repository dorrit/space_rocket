class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_rocketeer.build_profile(params[:profile])
    if @profile.save
      flash[:notice] = "Your profile was successfully created."
      redirect_to home_path
    else
      render :new
    end
  end

  def show 
    @profile = Profile.find(params[:id])
  end
end