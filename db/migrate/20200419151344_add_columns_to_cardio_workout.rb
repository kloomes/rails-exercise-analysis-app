class AddColumnsToCardioWorkout < ActiveRecord::Migration[6.0]
  def change
    add_column :cardio_workouts, :avg_pace_minute, :integer
    add_column :cardio_workouts, :avg_pace_seconds, :integer
    add_column :cardio_workouts, :max_pace_minute, :integer
    add_column :cardio_workouts, :max_pace_seconds, :integer
  end
end
