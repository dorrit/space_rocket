class ProfilesController < ApplicationController

  def new
    @profile = Profile.new
  end

    def create
    @profile = Profile.new(params[:profile])

    if @profile.save
      flash[:notice] = "Your profile was successfully created."
      redirect_to new_profile_path
    else
      render :new
    end
  end
end