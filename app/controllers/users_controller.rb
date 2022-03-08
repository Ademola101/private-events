class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @current_user_event = current_user.events
  end
end
