class ContactDetailsController < ApplicationController

  def new
    @contact_detail = ContactDetail.new
  end

  def create
    @contact_detail = ContactDetail.new(params[:contact_detail])

    if @contact_detail.save
      flash[:notice] = "Your contact details were successfully added."
      redirect_to new_contact_detail_path
    else
      render :new
    end
  end

end