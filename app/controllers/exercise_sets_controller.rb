class ExerciseSetsController < ApplicationController

  def create
    @exercise_set = ExerciseSet.new(exercise_set_params)
    @exercise = Exercise.find(params[:exercise_id])
    @weights_workout = WeightsWorkout.find(params[:weights_workout_id])
    @exercise_set[:exercise_id] = @exercise.id
    if @exercise_set.save
      redirect_to user_weights_workout_path(user_id: current_user, id: @weights_workout.id)
    else
      render :new
    end
  end

  def update
    @exercise_set = ExerciseSet.find(params[:id])
    @exercise_set.update_attributes(exercise_set_params)
    @exercise_set.save
    redirect_to user_weights_workout_path(user_id: current_user, id: @exercise_set.exercise.weights_workout_id)
  end

  def destroy
    @exercise_set = ExerciseSet.find(params[:id])
    @weights_workout_id = @exercise_set.exercise.weights_workout_id
    @exercise_set.destroy
    redirect_to user_weights_workout_path(user_id: current_user, id: @weights_workout_id)
  end

  private

  def exercise_set_params
    params.require(:exercise_set).permit(
      :weight,
      :reps
      )
  end
end
