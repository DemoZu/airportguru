class TipsFilterController < ApplicationController
  def index
    @airport = Airport.find(params[:airport_id])
    @tips = @airport.tips.where(category: params[:tip_categories]).order(:tip_category)
  end
end
