class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "User created."
      log_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @current_user_event = current_user.attended_events
  end

  private

    def user_params
      params.require(:user).permit(:username, :email)
    end
end