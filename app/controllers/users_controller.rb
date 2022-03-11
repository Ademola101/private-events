class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @current_user_event = current_user.attended_events
  end
end
