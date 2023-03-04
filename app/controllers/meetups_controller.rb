class MeetupsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def new
    @meetup = Meetup.new
  end

  def index
    @meetups = Meetup.all
  end

  def show
    @meetup = Meetup.find(params[:id])
  end
end
