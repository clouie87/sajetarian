class PageSection < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_ancestry orphan_strategy: :rootify
  belongs_to :page_section, optional: true

  belongs_to :page_type
  belongs_to :contact, optional: true

  has_attached_file :image, :styles => { :medium => "680x300>", :thumb => "170x75>" }
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def self.image_layouts
    ["image_on_right", "image_on_left"]
  end

  def label
    name.presence || subtitle
  end
end
