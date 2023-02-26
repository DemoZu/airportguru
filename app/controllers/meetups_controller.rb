class MeetupsController < ApplicationController

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
