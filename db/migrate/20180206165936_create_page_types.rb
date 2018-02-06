class CreatePageTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :page_types do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
