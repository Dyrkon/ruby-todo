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
      redirect_to('/sign_in', alert: 'Wrong email or password')
    end
  end

  def sign_up
    @user = User.new
  end

  def create_account
    @user = User.new(user_params)

    if @user.save
      redirect_to('/sign_in', alert: 'Account created, sign in.')
    else
      render('/sign_up')
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
