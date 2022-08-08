# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_user

  def index; end

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
end
