class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    added_attrs = [:username,  :mobile, :password, :password_confirmation, :remember_me, :name, :address, :gender]
    devise_parameter_sanitizer.permit :sign_up, keys: [:username,  :password, :name, :mobile,:address, :gender]
    devise_parameter_sanitizer.permit :sign_in, keys: [:username, :mobile, :password]
    devise_parameter_sanitizer.permit :account_update, keys: [:username, :mobile, :password, :name]
  end
	
end
