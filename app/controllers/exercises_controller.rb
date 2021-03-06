class ExercisesController < ApplicationController
  def create
    @exercise = Exercise.new(exercise_params)
    @weights_workout = WeightsWorkout.find(params[:weights_workout_id])
    @exercise[:weights_workout_id] = @weights_workout.id
    if @exercise.save
      redirect_to user_weights_workout_path(user_id: current_user, id: @weights_workout.id)
    else
      render :new
    end
  end

  # def edit
  #   @exercise = Exercise.find(params[:id])
  # end

  def update
    @exercise = Exercise.find(params[:id])
    @exercise.update_attributes(exercise_params)
    @exercise.save
    redirect_to user_weights_workout_path(user_id: current_user, id: @exercise.weights_workout_id )
  end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy
    redirect_to user_weights_workout_path(user_id: current_user, id: params[:weights_workout_id])
  end

  private

  def exercise_params
    params.require(:exercise).permit(
      :name
      )
  end
end
