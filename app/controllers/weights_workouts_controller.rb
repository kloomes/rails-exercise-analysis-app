class WeightsWorkoutsController < ApplicationController
  def index
    @weights_workouts = WeightsWorkout.where(user_id: current_user.id)
  end
end
