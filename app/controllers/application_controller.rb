# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index; end

  def current_user
    @current_user ||= User.find_by id: session[:user_id]
  end

  private

  def require_login
    redirect_to sign_up_path, alert: 'You must be logged in to access this section' if session[:user_id].nil?
  end
end
