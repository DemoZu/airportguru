class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    sql_query = "name ILIKE :query OR iata_name ILIKE :query" if params[:query].present?
    @airports = Airport.where(sql_query, query: "%#{params[:query]}%") if params[:query].present?

    respond_to do |format|
      format.html
      format.text { render partial: "airports/list", locals: { airports: @airports }, formats: [:html] }
    end
  end
end
