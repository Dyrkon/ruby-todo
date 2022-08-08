# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user, :require_login

  def index; end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  private

  def require_login
    if session[:user_id]
      if current_user.nil?
        flash[:error] = 'You must be logged in to access this section'
        redirect_to sign_in_path
      end
    else
      flash[:error] = 'You must be logged in to access this section'
      redirect_to sign_in_path
    end
  end
end
