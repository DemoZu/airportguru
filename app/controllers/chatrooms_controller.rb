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

    @chatroom =  Chatroom.new(chatroom_params)
    @message = Message.new
    @meetup = Meetup.find(params[:chatroom][:meetup_id] )
    @message.content = @chatroom.name
  
    @chatroom.name =  current_user.nickname + " and #" + @meetup.user.nickname + " talking.."
   
    # checkname_exist =  Chatroom.where("name ILIKE (?) ", "#{current_user.nickname}%")
     checkname_exist_name = "test"
    # checkname_exist.each do |name|
    #   checkname_exist_name = name
    # end
   
    if checkname_exist_name != @chatroom.name
      if @chatroom.save     
           
        @message.meetup =    @meetup      
        @message.chatroom_id = Chatroom.last.id
        @message.user = current_user

        if @message.save
          redirect_to chatroom_path(@chatroom)
        else
          render "chatrooms/show", status: :unprocessable_entity
        end
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
    params.require(:message).permit(:content, :user_id, :chatroom_id, :meetup_id)
  end
end
