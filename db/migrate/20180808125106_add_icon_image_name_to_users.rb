class AddIconImageNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :icon_image_name, :string, :default => 'default.jpg'
  end
end
