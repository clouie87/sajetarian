class AddFeaturedToPageSections < ActiveRecord::Migration[5.0]
  def change
    add_column :page_sections, :featured, :boolean, null: false, default: false
  end
end
