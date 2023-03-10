class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
  def new
    @chatroom = Chatroom.new
  end

  def create

   # @chatroom = Chatroom.new(chatroom_params)
    @chatroom = Chatroom.new
    @meetup = Meetup.find(params[:meetup_id])
    @chatroom.name = @meetup.content
    # @meetup.content + "with #{meetup.user.nickname} and " + current_user.nickname

    if @chatroom.save
      # @chatroom = Chatroom.find(params[:chatroom_id])
      #@chatroom = Chatroom.find(1)
      # add param Meetup.find(params[:meetup_id])
      #@meetup = Meetup.find(params[:meetup_id])
      @message = Message.new
      @message.meetup = @meetup
      @message.chatroom = @chatroom
      @message.content = params[:message]
      @message.user = current_user
      if @message.save
        # ChatroomChannel.broadcast_to(
        #   @chatroom,
        #   message: render_to_string(partial: "message", locals: { message: @message }),
        #   sender_id: @message.user.id
        # )
        # head :ok
        #render "/chatrooms/#{@chatroom.id}", status: :unprocessable_entity
        #raise
        redirect_to "#{airport_chatrooms_path}/#{@chatroom.id}"
        # /#{@chatroom.id}"

      else
        render "chatrooms/show", status: :unprocessable_entity
      end
    end
  end
  private
  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
  def message_params
    params.require(:message).permit(:content)
  end
end
