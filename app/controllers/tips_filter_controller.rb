class TipsFilterController < ApplicationController
  def index
    cat = TipCategory.where(name: params[:tip_categories])
    @tips = Tip.where(tip_category_id: cat)
  end
end
