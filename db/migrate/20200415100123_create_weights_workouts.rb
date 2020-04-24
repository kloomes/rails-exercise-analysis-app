class CreateWeightsWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :weights_workouts do |t|
      t.date :date
      t.time :time
      t.string :workout_type
      t.integer :duration_hours, default: 0, null: false
      t.integer :duration_minutes
      t.integer :duration_seconds
      t.integer :avg_hr
      t.integer :max_hr
      t.integer :kcal
      t.integer :total_volume
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
