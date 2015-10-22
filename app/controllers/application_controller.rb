class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :email, :password, :avatar, :role) }
        devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :current_password, :avatar, :role) }
        devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :email, :password, :remember_me, :avatar, :role) }
    end

    rescue_from CanCan::AccessDenied do |exception|
      redirect_to main_app.root_path, :alert => exception.message
    end
end
