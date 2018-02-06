class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :subtitle
      t.text :description
      t.string :page_type

      t.timestamps null: false
    end
  end
end
