class FacilitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def new
    @airport = Airport.find(params[:airport_id])
    @facility = Facility.new
  end

  def index
    @airport = Airport.find(params[:airport_id])
    # @facility_category = FacilityCategory.new
    @facilities = @airport.facilities
    @terminal = @airport.terminal
    @facility_categories = FacilityCategory.all
    # @categories = Category.articles.order('name ASC').limit(2)
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
  end

  def show
    @facility = Facility.find(params[:id])
  end
end
