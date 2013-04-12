class MessagesController < ApplicationController

  def new
    @message = Message.new  
    @rocketeers = Rocketeer.all
  end

  def create
    @message = current_rocketeer.sent_messages.build(params[:message])
    #binding.pry
     if @message.save
      flash[:notice] = "Your message was launched!"
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