class Event < ApplicationRecord
  geocoded_by :full_street_address
  validates :full_street_address, presence: true
  after_validation :geocode, if: ->(obj){ obj.full_address.present? and obj.full_address_changed? }

  def full_street_address
    self.full_address = [address, city, "Canada"].join(", ")
  end
end
