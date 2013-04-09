class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def current_rocketeer
    @current_rocketeer ||= Rocketeer.find(session[:rocketeer_id]) if session[:rocketeer_id]
  end
  helper_method :current_rocketeer

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_rocketeer.nil?
  end
end
