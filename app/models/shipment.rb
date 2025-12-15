class Shipment < ApplicationRecord
  has_many :batches, dependent: :destroy
  validates :tracking_number, presence: true
end
