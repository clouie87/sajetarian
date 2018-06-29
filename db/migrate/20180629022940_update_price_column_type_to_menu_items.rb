class UpdatePriceColumnTypeToMenuItems < ActiveRecord::Migration[5.0]
  def change
    change_column :menu_items, :price, :decimal, precision: 10, scale: 2
  end
end
