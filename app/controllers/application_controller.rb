class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :redirect_url
  # before_filter :configure_permitted_parameters, if: :devise_controller?

end
