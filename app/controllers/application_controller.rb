class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :persist_last_visited_path, :authenticate_user!, except: [:home]

  def home
  end

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name nickname photo bio])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name nickname photo bio])
  end

  def after_sign_in_path_for(_resource)
    root_path
  end

  private

  def persist_last_visited_path
    return if Rails.configuration.ignored_paths.include?(request.path) || request.xhr?

    session[:last_visited_path] = request.path
  end
end
