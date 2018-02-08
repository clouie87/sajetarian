class RenameSectionsToPageSections < ActiveRecord::Migration[5.0]
  def change
    rename_table :sections, :page_sections
  end
end
