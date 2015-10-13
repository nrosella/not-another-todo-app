class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!, :except => [:about, :index]

  def about
  	render 'about'
  end

  def welcome
  	render 'welcome'
  end

end
