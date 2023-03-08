class TipsFilterController < ApplicationController
  def index
    @navbar_disb = true
    cat = TipCategory.where(name: params[:tip_categories])
    if params == "All"
      @airport = Airport.find(params[:airport_id])
      @tips = @airport.tips.order(likes: :desc)
    else
      @tips = Tip.where(tip_category_id: cat)
    end
  end
end
