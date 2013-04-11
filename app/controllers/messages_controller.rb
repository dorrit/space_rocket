class MessagesController < ApplicationController

  def new
    @message = Message.new  
  end

  def create
    # binding.pry
    @message = current_rocketeer.messages.build(params[:message])
     if @message.save
      flash[:notice] = "Your contact details were successfully added."
      redirect_to messages_path
    else
      render :new
    end
  end

  def index
    @messages = Message.where(:public => true)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    flash[:notice] = "Your message has been blown into pieces. It is gone!"
    redirect_to messages_path
  end

end