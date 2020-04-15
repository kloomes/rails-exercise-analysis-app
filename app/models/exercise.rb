class Exercise < ApplicationRecord
  has_many :exercise_sets
  belongs_to :weights_workout
end
