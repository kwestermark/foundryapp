class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
  redirect_to main_app.root_url, alert: exception.message
  end

  rescue_from ActionController::InvalidAuthenticityToken do |exception|
    sign_out user
  end


end
