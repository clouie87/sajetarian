class AddAncestryToPageSections < ActiveRecord::Migration[5.0]
  def change
    add_column :page_sections, :ancestry, :string
    add_index :page_sections, :ancestry
  end
end
