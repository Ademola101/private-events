class AttendancesController < ApplicationController

  def new
    @attendance = Attendance.new

  end

  def show
    @attendance = Attendance.find(params[:event_id])
  end
  def create
    @event = Event.find(params[:event_id])
    @attendance = current_user.attendances.new(attendance_params)
    
    if @attendance.save
      render "events/index"
    else
      render :new
    end
  end

private

  def attendance_params
    params.require(:attendance)
          .permit(:id, :num_guests, {user_attributes: [:id, :email]})
  end

end
