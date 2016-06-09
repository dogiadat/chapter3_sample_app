class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  def log_in(user)
  	session[:user_id] = user.id
  	
  end

  def index
  	render text: 'hello chapter3'
  end


end
