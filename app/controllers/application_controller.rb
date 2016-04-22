class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
    if current_user.present?
 	    sintomas_path
    else
      super
    end
  end

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :avatar, :name, :lastname, :identify, :password, :password_confirmation, :entity_id) }
  end

  def current_ability
    if current_admin_user.present?
      @current_ability ||= Ability.new(current_admin_user)
    end
  end

  

end
