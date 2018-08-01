class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      # 建物名
      t.integer :building_id, null: false
      # 階
      t.integer :floor, null: false
      # 部屋名
      t.string :room, null: false

      t.timestamps
    end
  end
end
