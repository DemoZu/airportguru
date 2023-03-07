class JourneysController < ApplicationController
  def add_flight
    @flight = Flight.find(params[:flight_id])
    current_user.journeys.create(flight: @flight)
    redirect_to airport_path(@flight.airport)
  end
end
