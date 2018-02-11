class AddAncestryToMenuItems < ActiveRecord::Migration[5.0]
  def change
    add_column :menu_items, :ancestry, :string
    add_index :menu_items, :ancestry
  end
end
