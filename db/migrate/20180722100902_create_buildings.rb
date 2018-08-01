class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :name, null: false
      t.integer :storey, null: false
      t.timestamps
    end
  end
end
