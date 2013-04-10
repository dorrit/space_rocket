class ContactDetailsController < ApplicationController

  def new
    @contact_detail = ContactDetail.new
  end

  def create
 
    @contact_detail = current_rocketeer.build_contact_detail(params[:contact_detail])

    if @contact_detail.save

      redirect_to '/dashboard'
      flash[:notice] = "Your contact details were successfully added."
    else
      render :new
    end
  end

end