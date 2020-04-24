class WeightsWorkout < ApplicationRecord
  has_many :exercises, dependent: :destroy
  belongs_to :user

  validates :date, presence: true
  validates :time, presence: true
end
