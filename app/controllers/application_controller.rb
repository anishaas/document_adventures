class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

def homepage
  render '/layouts/homepage.html.erb'
end

def authenticate_user
  unless user_logged_in? #User would not be able to log in if invalid
    redirect_to new_login_path
  end
end

def current_user #setting current user to user in session(logged in user)
  if user_logged_in?
    User.find(session[:logged_in_users_id])
  end
end

  def user_logged_in?
    session[:logged_in_users_id].present?
  end

  helper_method :user_logged_in?
  helper_method :current_user
end
