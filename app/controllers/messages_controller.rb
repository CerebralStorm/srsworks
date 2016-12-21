class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:success] = 'Thank you for contacting us.'
    else
      flash[:error] = 'Oops something went wrong. Please try again'
    end
    redirect_to :back
  end

protected

  def message_params
    params.require(:message).permit(:name, :email, :subject, :content)
  end

end
