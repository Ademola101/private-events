class Event < ApplicationRecord
  belongs_to :organizer, :class_name => "User"
  has_many :attendances, :foreign_key => "attended_event_id", class_name: "Attendance"
  has_many :attendees, :through => :attendances, :source => :attendee

  belongs_to :organizer, :class_name => "User"
  has_many :event_attendings, :foreign_key => "attended_event_id", class_name: "EventAttending"
  has_many :attendees, :through => :event_attendings, :source => :attendee

  scope :upcoming, -> { where("date >= #{Date.current}") }
  scope :past, -> { where("date < #{Date.current}")}
end