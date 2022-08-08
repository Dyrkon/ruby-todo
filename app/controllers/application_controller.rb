# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :require_login

  def index; end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  private

  def require_login
    if current_user.nil?
      flash[:error] = "You must be logged in to access this section"
      redirect_to sign_in_path
    end
  end
end
