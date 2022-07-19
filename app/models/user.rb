class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :organized_events, foreign_key: 'organizer_id', class_name: 'Event'
  has_many :attendances, foreign_key: 'attendee_id', class_name: 'Attendance'
  has_many :attended_events, through: :attendances, source: :attended_event

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
