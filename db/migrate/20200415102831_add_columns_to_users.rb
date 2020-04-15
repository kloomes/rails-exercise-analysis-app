class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :date_of_birth, :date
    add_column :users, :height, :integer
    add_column :users, :gender, :string
  end
end
