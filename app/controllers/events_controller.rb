class EventsController < ApplicationController
  before_action :authenticate_user!, :except => [:index]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.organized_events.build(event_params)
    if @event.save
      flash[:success] = "Event created."
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
    @attendee = @event.attendees
   
  end

  def attendance
    @event = Event.find_by(params[:id])
    Attendance.create(attendee_id: current_user.id, attended_event_id: @event.id, num_guests: 5)
    redirect_to action: 'index'
  end

  def index
    @events = Event.all
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def event_params
      params.require(:event).permit(:title, :location, :date)
    end

end
