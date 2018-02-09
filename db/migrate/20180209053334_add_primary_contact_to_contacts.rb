class AddPrimaryContactToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :primary_contact, :boolean, null: false, default: false
  end
end
