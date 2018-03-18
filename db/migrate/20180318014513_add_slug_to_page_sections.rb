class AddSlugToPageSections < ActiveRecord::Migration[5.0]
  def change
    add_column :page_sections, :slug, :string
    add_index :page_sections, :slug, unique: true
  end
end
