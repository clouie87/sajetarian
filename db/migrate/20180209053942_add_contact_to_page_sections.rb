class AddContactToPageSections < ActiveRecord::Migration[5.0]
  def change
    add_column :page_sections, :contact_id, :integer
  end
end
