class MessagesController < ApplicationController
  def create

    @chatroom = Chatroom.find(params[:chatroom_id])
    # add param Meetup.find(params[:meetup_id])
    @meetup = Meetup.find(1)
    @message = Message.new(message_params)
    @message.meetup =  @meetup
    @message.chatroom = @chatroom
    @message.user = current_user

    if @message.save
      redirect_to chatroom_path(@chatroom)
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
