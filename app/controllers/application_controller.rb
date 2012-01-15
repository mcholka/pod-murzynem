require "application_responder"

class ApplicationController < ActionController::Base

  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery

  helper_method :current_user


  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :admin

  protected

  def admin
    unless authorize
      flash[:notice] = "Unauthorized access"
      redirect_to root_url
      false
    end
  end

  def admin
	@admin ||= User.find(session[:user_id]) if session[:user_id] == 1
  end


end
