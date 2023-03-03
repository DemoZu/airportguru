class AirportsController < ApplicationController
  before_action :set_list, only: %i[show]
  skip_before_action :authenticate_user!, only: %i[home show]

  def index
    @airports = Airport.all
    @airport = Airport.find(params[:id])
  end

  def new
    @airport = Airport.new
  end

  def show
    @airport = Airport.find(params[:id])
  end

  private

  def set_list
    @airport = Airport.find(params[:id])
  end

  def airport_params
    params.require(:airport).permit(:name, :iataname, :terminal)
  end
end
