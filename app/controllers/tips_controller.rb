class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @airport = Airport.find(params[:airport_id])
    @tips = @airport.tips.order(likes: :desc) if present?
    @tip_categories = TipCategory.all
    @flights = current_user.flights if current_user.present?
    @tip = Tip.new
  end

  def create
    @airport = Airport.find(params[:airport_id])
    @tip = Tip.new(tip_params)
    return unless @tip.save

    redirect_to airport_tips_path
  end

  private

  def tip_params
    params.require(:tip).permit(:title, :content, :user_id, :airport_id, :tip_category_id)
  end
end
