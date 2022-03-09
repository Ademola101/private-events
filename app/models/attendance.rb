class Attendance < ApplicationRecord  
  belongs_to :attendee, :class_name => "User"
  belongs_to :attended_event, :class_name => "Event"
  accepts_nested_attributes_for :attendee
  validates :attendee, length: {minimum:1}
end