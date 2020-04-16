class WeightsWorkoutsController < ApplicationController
  def index
    @weights_workouts = WeightsWorkout.where(user_id: current_user.id)
  end

  def new
    @weights_workout = WeightsWorkout.new
  end

  def create
    @weights_workout = WeightsWorkout.new(weights_workout_params)
    @user = User.find(params[:user_id])
    @weights_workout[:user_id] = @user.id
    if @weights_workout.save
      redirect_to user_weights_workouts_path(current_user.id)
    else
      render :new
    end
  end

  private

  def weights_workout_params
    params.require(:weights_workout).permit(
      :workout_type,
      :date,
      :time,
      :duration_hours,
      :duration_minutes,
      :duration_seconds,
      :avg_hr,
      :max_hr,
      :kcal,
      :notes
      )
  end
end
