class RemoveColumnsFromCardioAndWeights < ActiveRecord::Migration[6.0]
  def change
    remove_column :cardio_workouts, :avg_pace
    remove_column :cardio_workouts, :max_pace
    remove_column :weights_workouts, :total_volume
  end
end
