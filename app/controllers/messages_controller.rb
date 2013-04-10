class MessagesController < ApplicationController

  def new
    @message = Message.new  
  end

  def create
    # binding.pry
    @message = current_rocketeer.messages.build(params[:message])
     if @message.save
      flash[:notice] = "Your contact details were successfully added."
      redirect_to root_path
    else
      render :new
    end
  end

end