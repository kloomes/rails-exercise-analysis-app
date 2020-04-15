class CreateStats < ActiveRecord::Migration[6.0]
  def change
    create_table :stats do |t|
      t.date :date
      t.time :time
      t.float :weight
      t.float :body_fat
      t.float :lean_mass
      t.integer :bmi
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
