class AddImageLayoutToPageSections < ActiveRecord::Migration[5.0]
  def change
    add_column :page_sections, :image_layout, :string
  end
end
