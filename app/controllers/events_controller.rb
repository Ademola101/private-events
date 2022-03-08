class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
    render :new
  end


  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to action: "index"
    else
      render :new
    end
  end

  # Other controller actions go here.

  private
    def event_params
      params.require(:event).permit(:title, :location, attendances_attributes: [:num])
    end
end
