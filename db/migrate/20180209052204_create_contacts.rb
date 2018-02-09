class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email_address
      t.string :phone_number
      t.string :address
      t.string :city
    end
  end
end
