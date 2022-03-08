class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  accepts_nested_attributes_for :attendances


end
