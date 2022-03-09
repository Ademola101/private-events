class ChangeEventIdToEventAttendedId < ActiveRecord::Migration[7.0]
  def change
    rename_column :attendances, :event_id, :attended_event_id
  end
end
