class CreateFormSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :form_submissions do |t|
      t.string :name
      t.string :email
      t.text :comment

      t.timestamps null: false
    end
  end
end
