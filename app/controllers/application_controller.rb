# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index; end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def require_login
    if session[:user_id]
      redirect_to sign_in_path, alert: 'You must be logged in to access this section' if current_user.nil?
    else
      redirect_to sign_in_path, alert: 'You must be logged in to access this section'
    end
  end
end
