class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    if params[:query].present?
      @airports = Airport.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @airports = Airport.all
    end
  end
end
