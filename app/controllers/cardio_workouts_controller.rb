class CardioWorkoutsController < ApplicationController
  def index
    @cardio_workouts = CardioWorkout.where(user_id: current_user.id)
  end

  def show
    @cardio_workout = CardioWorkout.find(params[:id])
  end
end
