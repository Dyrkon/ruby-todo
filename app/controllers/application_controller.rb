# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index
    render 'default/index'
  end
end
