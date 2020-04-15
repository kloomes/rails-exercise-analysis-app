class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :weights_workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
