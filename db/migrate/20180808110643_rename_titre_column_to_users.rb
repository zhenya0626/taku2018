class RenameTitreColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :commnent, :comment
  end
end
