class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	#This allows the attributes to be accessible at sign up. I had to add email and password after adding token. 
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:content, :email, :password) }
  	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :content) }
  end
end
