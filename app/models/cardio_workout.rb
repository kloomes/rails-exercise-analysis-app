class CardioWorkout < ApplicationRecord
  belongs_to :user

  validates :workout_type, presence: true
  validates :date, presence: true
  validates :time, presence: true
end
