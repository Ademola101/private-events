class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :attendances
  has_many :events, through: :attendances
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
