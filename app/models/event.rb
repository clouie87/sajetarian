class Event < ApplicationRecord
  geocoded_by :full_street_address
  validates :full_street_address, presence: true
  after_validation :geocode, if: ->(obj){ obj.full_address.present? and obj.full_address_changed? }

  scope :today, -> { where('events.starts_at >= :today_start && events.starts_at <= :today_end', today_start: Date.current.at_beginning_of_day, today_end: Date.current.at_end_of_day )}
  scope :future, -> { where('events.starts_at >= :today OR events.ends_at >= :today OR events.ends_at IS NULL', today: Date.current.at_beginning_of_day) }

  def full_street_address
    self.full_address = [address, city, "Canada"].join(", ")
  end

  def start_date
    starts_at.to_date
  end

  def end_date
    ends_at.to_date
  end

  def start_time
    starts_at.strftime("%H:%M")
  end

  def end_time
  ends_at.strftime("%H:%M")
  end
end
