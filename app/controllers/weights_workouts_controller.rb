class WeightsWorkoutsController < ApplicationController
  def index
    @results = WeightsWorkout.where(user_id: current_user).order(:date)
    @weights_workouts = @results.sort_by { |obj| obj.date }
    @weights_workouts.sort! { |x, y| y.date <=> x.date }
  end

  def new
    @weights_workout = WeightsWorkout.new
  end

  def create
    @weights_workout = WeightsWorkout.new(weights_workout_params)
    @user = User.find(params[:user_id])
    @weights_workout[:user_id] = @user.id
    if @weights_workout.save
      redirect_to user_weights_workout_path(current_user, @weights_workout)
    else
      render :new
    end
  end

  def edit
    @weights_workout = WeightsWorkout.find(params[:id])
  end

  def update
    @weights_workout = WeightsWorkout.find(params[:id])
    @weights_workout.update_attributes(weights_workout_params)
    @weights_workout.save
    redirect_to user_weights_workout_path(current_user, params[:id])
  end

  def destroy
    @weights_workout = WeightsWorkout.find(params[:id])
    @weights_workout.destroy
    redirect_to user_weights_workouts_path(current_user)
  end

  def show
    @weights_workout = WeightsWorkout.find(params[:id])
    @exercises = Exercise.where(weights_workout_id: params[:id])
    @exercise = Exercise.new
    @exercise_set = ExerciseSet.new
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
