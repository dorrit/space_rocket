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

end