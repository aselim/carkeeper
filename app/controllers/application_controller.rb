class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time  
  protect_from_forgery # See ActionController::RequestForgeryProtection for details  
  # From authlogic  
#  filter_parameter_logging :password, :password_confirmation  
  helper_method :current_user_session, :current_user
  private
  def current_user_session
    @current_user_session ||= UserSession.find
  end
  def current_user
    @current_user ||= current_user_session && current_user_session.user
  end
end
