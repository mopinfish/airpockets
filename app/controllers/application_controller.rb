class ApplicationController < ActionController::Base
#  protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  helper_method :current_user, :logged_in?, :authenticate

  private

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find_by(uid: session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

  def authenticate
    return if logged_in?
    redirect_to root_path, alert: "ログインしてください"
  end
end
