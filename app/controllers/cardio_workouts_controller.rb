class CardioWorkoutsController < ApplicationController
  def index
    @cardio_workouts = CardioWorkout.where(user_id: current_user.id)
  end

  def show
    @cardio_workout = CardioWorkout.find(params[:id])
  end

  def new
    @cardio_workout = CardioWorkout.new
  end

  def create
    @cardio_workout = CardioWorkout.new(cardio_workout_params)
    @user = User.find(params[:user_id])
    @cardio_workout[:user_id] = @user.id
    if @cardio_workout.save
      redirect_to user_cardio_workouts_path(current_user.id)
    else
      render :new
    end
  end

  def edit
    @cardio_workout = CardioWorkout.find(params[:id])
  end

  def update
    @cardio_workout = CardioWorkout.find(params[:id])
    @cardio_workout.update_attributes(cardio_workout_params)
    @cardio_workout.save
    redirect_to user_cardio_workouts_path(current_user.id)
  end

  private

  def cardio_workout_params
    params.require(:cardio_workout).permit(
      :workout_type,
      :date,
      :time,
      :training_type,
      :duration_hours,
      :duration_minutes,
      :duration_seconds,
      :distance,
      :avg_pace,
      :max_pace,
      :avg_speed,
      :max_speed,
      :avg_hr,
      :max_hr,
      :kcal,
      :ascent,
      :descent,
      :notes
      )
  end
end
