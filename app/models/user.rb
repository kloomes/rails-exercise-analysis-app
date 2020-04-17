class User < ApplicationRecord
  has_many :stats, dependent: :destroy
  has_many :cardio_workouts, dependent: :destroy
  has_many :weights_workouts, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
