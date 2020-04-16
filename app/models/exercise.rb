class Exercise < ApplicationRecord
  has_many :exercise_sets, dependent: :destroy
  belongs_to :weights_workout
end
