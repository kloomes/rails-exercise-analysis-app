class CreateCardioWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :cardio_workouts do |t|
      t.string :workout_type
      t.date :date
      t.time :time
      t.string :training_type
      t.integer :duration_hours, default: 0, null: false
      t.integer :duration_minutes
      t.integer :duration_seconds
      t.float :distance
      t.float :avg_pace
      t.float :max_pace
      t.float :avg_speed
      t.float :max_speed
      t.integer :avg_hr
      t.integer :max_hr
      t.integer :kcal
      t.integer :ascent
      t.integer :descent
      t.integer :running_index
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
