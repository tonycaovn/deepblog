class ApplicationController < ActionController::Base
    include SessionsHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def authenticate_user
    redirect_to :login if not logged_in?
  end
end
