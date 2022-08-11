# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index; end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  rescue ActiveRecord::RecordNotFound
    @current_user = nil
  end

  private

  def require_login
    redirect_to sign_up_path, alert: 'You must be logged in to access this section' if session[:user_id].nil?
  end
end
