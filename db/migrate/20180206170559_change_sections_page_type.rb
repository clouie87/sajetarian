class ChangeSectionsPageType < ActiveRecord::Migration[5.0]
  def change
    remove_column :sections, :page_type
    add_reference :sections, :page_type, foreign_key: true
  end
end
