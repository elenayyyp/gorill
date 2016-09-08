class Tracking < ApplicationRecord
  has_one :shuttle
  has_one :driver
  validates :lat, :lng, numericality: true
end
