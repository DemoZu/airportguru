class MeetupsController < ApplicationController

  def new
    @meetup = Meetup.new
  end

  def index
    @meetup_category = MeetupCategory.all.order("meetup_topic asc")
    @new_meetup = Meetup.new
    @mymeetup = Meetup.where("user_id = (?)", current_user.id)
    cat_query =""
    if params[:category_id].present?
      filter_id = params[:category_id].split("_")
      if filter_id.length > 1
        filter_id.each do |item|
          if item != ""
            if cat_query != ""
              cat_query = cat_query + " or meetup_category_id = #{item}"
            else
              cat_query = cat_query + " meetup_category_id = #{item}"
            end
          end
        end
      end
    end

    if params[:query].present? && cat_query !=""
      tmp_query = "(#{cat_query}) AND content ILIKE (?) AND user_id <> (?)"
      @meetups = Meetup.where(tmp_query, "%#{params[:query]}%", current_user.id)
    elsif params[:query].present? && cat_query ==""
      @meetups = Meetup.where("content ILIKE (?) AND user_id <> (?)", "%#{params[:query]}%", current_user.id)
    elsif !params[:query].present? && cat_query !=""
      tmp_query = "(#{cat_query}) AND user_id <> (?)"
      @meetups = Meetup.where(tmp_query, current_user.id)
    else
      @meetups = Meetup.where("user_id <> (?)", current_user.id)
    end


    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "meetups/list", locals: {meetups: @meetups, mymeetup: @mymeetup}, formats: [:html] }
    end

  end

  def show
    @meetup = Meetup.find(params[:id])
  end
end
