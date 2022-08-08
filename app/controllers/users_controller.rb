class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    puts "here2"

    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to task_lists_path
    else
      flash.now[:notice] = @user.errors.full_messages.to_sentence
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
