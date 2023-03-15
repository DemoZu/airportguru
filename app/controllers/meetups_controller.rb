class MeetupsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def new
    @meetup = Meetup.new
  end

  def create
    @meetup = Meetup.new(meetup_params)

    return unless @meetup.save

    redirect_to airport_meetups_path
  end

  def index
    @chatroom = Chatroom.new
    @message = Message.new
    @meetup_category = MeetupCategory.all.order("meetup_topic asc")
    @new_meetup = Meetup.new

    if current_user.present?
      user_id = current_user.id
      airport_id = params[:airport_id]
      @new_meetup.airport_id = airport_id
      @new_meetup.user_id = user_id
      @chatrooms = Chatroom.where("name ILIKE (?) ", "%##{current_user.nickname}%")
      # need to find createor of meetup
      @chatroomsto = Chatroom.where("name ILIKE (?) ", "#{current_user.nickname}% and %")

    else
      user_id = 0
      airport_id = params[:airport_id]
    end

    @mymeetup = Meetup.where("user_id = (?) and airport_id =(?)", user_id, airport_id)

    cat_query = ""
    if params[:category_id].present?
      filter_id = params[:category_id].split("_")
      if filter_id.length > 1
        filter_id.each do |item|
          if item != ""
            if cat_query == ""
              cat_query += " meetup_category_id = #{item}"
            else
              cat_query += " or meetup_category_id = #{item}"
            end
          end
        end
      end
    end

    if params[:query].present? && cat_query != ""
      tmp_query = "(#{cat_query}) AND content ILIKE (?) AND user_id <> (?) AND airport_id = (?)"
      @meetups = Meetup.where(tmp_query, "%#{params[:query]}%", user_id, airport_id)
    elsif params[:query].present? && cat_query == ""
      @meetups = Meetup.where("content ILIKE (?) AND user_id <> (?) AND airport_id = (?)", "%#{params[:query]}%", user_id, airport_id)
    elsif !params[:query].present? && cat_query != ""
      tmp_query = "(#{cat_query}) AND user_id <> (?) AND airport_id = (?)"
      @meetups = Meetup.where(tmp_query, user_id, airport_id)
    else
      @meetups = Meetup.where("user_id <> (?) AND airport_id = (?)", user_id, airport_id)
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text do
        render partial: "meetups/list", locals: { meetups: @meetups, mymeetup: @mymeetup }, formats: [:html]
      end
    end
    @airport = Airport.find(params[:airport_id])
    @flights = current_user.flights if current_user.present?
  end

  def show
    @meetup = Meetup.find(params[:id])
  end

  private

  def meetup_params
    params.require(:meetup).permit(:user_id, :content, :airport_id, :meetup_category_id)
  end
end
