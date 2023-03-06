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
    @user = current_user
    # @airport = Airport.find(params[:id])
    @airport_flights = Flight.where(airport: @airport)
    sql_query = "flight_number ILIKE :query" if params[:query].present?
    @flights = @airport_flights.where(sql_query, query: "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "airports/flight_list", locals: { flights: @flights }, formats: [:html] }
    end
  end

  private

  def set_list
    @airport = Airport.find(params[:id])
  end

  def flight_params
    params.require(:flight).permit(:flight_number, :departure_time, :flight_destination, :airport_id, :query)
  end

  def airport_params
    params.require(:airport).permit(:name, :iata_name, :terminal)
  end
end
