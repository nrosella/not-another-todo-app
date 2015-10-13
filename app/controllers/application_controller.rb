class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:about, :index]

  before_filter :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(current_user)
     root_path(current_user)
  end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :last_name, :email, :password) }
        end

  def about
  	render 'about'
  end

  def welcome
  	render 'welcome'
  end

end
