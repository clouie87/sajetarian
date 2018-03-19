class AddAssociationToPageSections < ActiveRecord::Migration[5.0]
  def change
    add_column :page_sections, :link_text, :string
    add_column :page_sections, :page_section_id, :integer
  end
end
