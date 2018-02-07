class CreateMenuItems < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :tag
      t.timestamps null: false
    end
  end
end
