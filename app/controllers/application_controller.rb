class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, 
      :name, :username, :bio, :location) }

    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :password, :password_confirmation, 
      :current_password, :name, :username) }

  end

  def cust
  	@cust = Customer.all
    
  end
  def prop
  	@prop = Property.all
  end
  def evic
  	@evic = Eviction.all  	
  end

  def company_and_id
    "#{company}  #{contact}"
  end

  
end
