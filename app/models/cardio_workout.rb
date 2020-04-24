class CardioWorkout < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
end
