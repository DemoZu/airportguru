class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
  end

  def new
    @airport = Airport.find(params[:airport_id])
    @airport = @facility.airport
    @facility = Facility.new
  end

  def show
    @facility = Facility.find(params[:id])
  end
end
