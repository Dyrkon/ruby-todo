class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: user_params[:email])
    @error = ""

    # if @user == nil
    #   @user = User.new
    #   @error = "Invalid email or password"
    # end

    puts "HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH"
    puts @error
    puts @user.nil?

    if @user && @user.password == user_params[:password]
      session[:user_id] = @user.id
      redirect_to(task_lists_path)
    else
      @error = "Invalid email or password"
      render("sessions/new")
    end
    @user.errors.full_messages.to_sentence
  end

  def sign_up
    @user = User.new(user_params)

    if @user.save
      redirect_to(sign_in_path)
    else
      @error = "Invalid email or password"
      render("sessions/new")
    end
    @user.errors.full_messages.to_sentence

  end

  private

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
