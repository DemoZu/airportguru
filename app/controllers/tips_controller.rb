class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    @airport = Airport.find(params[:airport_id])
    @tips = @airport.tips.order(likes: :desc)
  end
end
