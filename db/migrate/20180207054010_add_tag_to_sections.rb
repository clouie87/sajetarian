class AddTagToSections < ActiveRecord::Migration[5.0]
  def change
    add_column :sections, :tag, :integer
  end
end
