class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      # タイトル
      t.string :title, null: false
      # 説明
      t.text :description, null: true
      # 締め切り
      t.datetime :target_at, null: true
      # タスク完了日
      t.datetime :completed_at, null: true
      # タスク完了したか
      t.boolean :completed, null: false, default: false
      # userモデルのuser_idに結びつけるため、必要
      t.integer :user_id, null: true
      t.timestamps
    end
  end
end
