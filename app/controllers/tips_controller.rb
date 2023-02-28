class TipsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  def index
    # find airport
    # @airport = Airport.find(params[:airport_id])
    # @user = current_user
    # @tips = @user.tips

    @tips = Tip.all
    @airport = Airport.find(params[:airport_id])
    # raise
    # @user = @tips.find(params[:user_id])
    # raise
    # @user = current_user.id
  end
end
