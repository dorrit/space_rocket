class ApplicationController < ActionController::Base
  protect_from_forgery

  def authorize
    redirect_to login_url, alert: "Not authorized" if current_rocketeer.nil?
  end

end
