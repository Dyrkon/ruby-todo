# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])

    if @user && @user.password == user_params[:password]
      session[:user_id] = @user.id
      redirect_to(task_lists_path)
    else
      flash.notice = 'Wrong password or email'
      @user = User.new
      render('sessions/new')
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
