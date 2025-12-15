class Shipment < ApplicationRecord
  has_many :batches, dependent: :destroy
end
