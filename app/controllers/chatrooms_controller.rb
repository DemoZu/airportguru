class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    if current_user.present? &&
       (@chatroom.messages.first.meetup.user_id == current_user.id ||
         @chatroom.messages.first.user_id == current_user.id) &&
       @chatroom.messages.first.status != "REJECT"

    else
      redirect_to root_path
    end
  end

  def new
    @chatroom = Chatroom.new
    @message = Message.new
  end

  def update
    # update first message's status to 'REJECT' and close chatroom
    @chatroom = Chatroom.find(params[:id])
    @message = @chatroom.messages.first
    @message.status = "REJECT"
    return unless @message.save

    redirect_to airport_meetups_path
  end

  def create
    @chatroom = Chatroom.new
    @meetup = Meetup.find(params[:meetup_id])
    @chatroom.name = current_user.nickname + " and #" + @meetup.user.nickname + " chatting..."
    if @chatroom.save
      @message = Message.new
      @message.meetup = @meetup
      @message.chatroom = @chatroom
      @message.content = params[:message]
      @message.user = current_user
      if @message.save
        redirect_to "#{airport_chatrooms_path}/#{@chatroom.id}"
      else
        render "chatrooms/show", status: :unprocessable_entity
      end
    else
      render "chatrooms/show", status: :unprocessable_entity
    end
  end

  private

  def chatroom_params
    params.require(:chatroom).permit(:name)
  end

  def message_params
    params.require(:message).permit(:content, :user_id, :chatroom_id, :meetup_id)
  end
end
