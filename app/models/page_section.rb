class PageSection < ApplicationRecord
  belongs_to :page_type
  belongs_to :contact, optional: true

  has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.image_layouts
    ["image_on_right", "image_on_left"]
  end
end
