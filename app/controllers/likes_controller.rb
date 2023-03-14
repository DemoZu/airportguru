class LikesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]

  before_action :find_tip, :find_airport, only: %i[create destroy]

  def create
    if already_liked?
      flash[:notice] = "You can't like more than once"
    else
      @tip.likes.create(user_id: current_user.id)
    end

    redirect_to airport_tips_path(@airport)
  end

  # def destroy
  #   if !(already_liked?)

  #     flash[:notice] = "Cannot unlike"
  #   else
  #     @like.destroy
  #   end

  #   redirect_to airport_tips_path(@airport)
  # end

  private

  # def find_like
  #   @like = @tip.likes.find(params[:id])
  # end

  def find_tip
    @tip = Tip.find(params[:tip_id])
  end

  def find_airport
    @airport = Airport.find(params[:airport_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, tip_id: params[:tip_id]).exists?
  end
end
