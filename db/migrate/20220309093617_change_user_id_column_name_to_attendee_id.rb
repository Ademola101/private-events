class ChangeUserIdColumnNameToAttendeeId < ActiveRecord::Migration[7.0]
  def change
    rename_column :attendances, :user_id, :attendee_id
  end
end
