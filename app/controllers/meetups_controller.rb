class MeetupsController < ApplicationController

  def new
    @meetup = Meetup.new
  end

  def index
    @meetup_category = MeetupCategory.all.order("meetup_topic asc")
    #@meetup_category = meetup_category.order("meetup_topic asc")
    @new_meetup = Meetup.new
   # @movies = Movie.order(year: :desc, title: :asc)
    @mymeetup = Meetup.where("user_id = (?)", current_user.id)

    if params[:query].present?
      #@meetups = @meetups.where("content ILIKE ?", "%#{params[:query]}%")
      @meetups = Meetup.where("content ILIKE (?) AND user_id <> (?)", "%#{params[:query]}%", current_user.id)

     #@meetups = Meetup.where("user_id <> (?)", current_user.id)
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
