class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up , keys: [:pseudo])
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:login])
  end

  def default_url_options
    { host: ENV["PRODUCTION_URL"] || "localhost:3000" }
  end

end

