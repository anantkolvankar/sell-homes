class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  devise_group :person, contains: [:user, :admin,:broker,:builder,:customer,:agent]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) do |u|
      u.permit(:first_name, :email, :password, :password_confirmation,:company,agent_info_attributes: [:company,:title] )
    end  
     devise_parameter_sanitizer.for(:account_update) << [agent_info_attributes: [:company,:title]]
  end
end
 