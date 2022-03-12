class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @events = current_user.attended_events
    @past_events = current_user.attended_events.past
    @upcoming_events = current_user.attended_events.upcoming
  end
end
