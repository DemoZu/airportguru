class TipsFilterController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @navbar_disb = true
    if params[:tip_categories][0] == "All"
      @airport = Airport.find(params[:airport_id])
      @tips = @airport.tips.order(likes: :desc)
      # @tips = Tip.all

    else

      cat = TipCategory.where(name: params[:tip_categories])
      @airport = Airport.find(params[:airport_id])
      tmp = @airport.tips.order(likes: :desc)
      @tips = tmp.where(tip_category_id: cat)

    end
  end
end
