class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end
  def new
    @chatroom = Chatroom.new
    @message = Message.new
  end

  def create

   # @chatroom = Chatroom.new(chatroom_params)
    @chatroom = Chatroom.new
    @meetup = Meetup.find(params[:meetup_id])
    @chatroom.name =  current_user.nickname + " and #" + @meetup.user.nickname + " talking.."
    #@chatroom.name = @meetup.content
    # @meetup.content + "with #{meetup.user.nickname} and " + current_user.nickname
   # if checkname_exist_name != @chatroom.name
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
          redirect_to "#{airport_chatrooms_path}/#{@chatroom.id}"
          # /#{@chatroom.id}"
        else
          render "chatrooms/show", status: :unprocessable_entity
        end
      else
        render "chatrooms/show", status: :unprocessable_entity
      end
      #end
  end
  private
  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
  def message_params
    params.require(:message).permit(:content, :user_id, :chatroom_id, :meetup_id)
  end
end
