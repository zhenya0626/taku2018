class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :student_number, :integer
    add_column :users, :commnent, :string
    add_column :users, :location_id, :integer
  end
end
