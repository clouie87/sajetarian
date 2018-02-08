class AddImageToSections < ActiveRecord::Migration[5.0]
  def change
    add_attachment :sections, :image
  end
end
