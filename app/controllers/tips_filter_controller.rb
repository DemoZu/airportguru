class TipsFilterController < ApplicationController
  def index
    @navbar_disb = true
    if params[:tip_categories] == "All"
      @tips = Tip.all
    else
      cat = TipCategory.where(name: params[:tip_categories])
      # @airport = Airport.find(params[:airport_id])
      # @tips = @airport.tips.order(likes: :desc)
      @tips = Tip.where(tip_category_id: cat)
    end
  end
end
