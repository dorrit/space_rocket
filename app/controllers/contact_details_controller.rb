class ContactDetailsController < ApplicationController

  def new
    @contact_detail = ContactDetail.new
  end

  def create
 
    @contact_detail = current_rocketeer.build_contact_detail(params[:contact_detail])

    if @contact_detail.save

      redirect_to new_profile_path

      # redirect_to '/home'
      flash[:notice] = "Your contact details were successfully added."

    else
      render :new
    end
  end

end