class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  has_many :attendances, foreign_key: 'attended_event_id', class_name: 'Attendance'
  has_many :attendees, through: :attendances, source: :attendee
  validates :title, presence: true
  validates :location, presence: true

  def registered?(user)
    !!attendees.find { |attendee| attendee.id == user.id }
  end
  current_date = Date.current

  scope :upcoming, -> { where("date >= current_date") }
  scope :past, -> { where("date < current_date")}
end
