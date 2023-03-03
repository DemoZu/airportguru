class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @airports = Airport.where("name ILIKE ?", "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "airports/list", locals: { airports: @airports }, formats: [:html] }
    end
  end
end
