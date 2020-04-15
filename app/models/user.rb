class User < ApplicationRecord
  has_many :stats
  has_many :cardio_workouts
  has_many :weights_workouts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
