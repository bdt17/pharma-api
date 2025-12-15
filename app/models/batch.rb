class Batch < ApplicationRecord
  belongs_to :shipment
  validates :lot_number, presence: true, uniqueness: true
  enum status: { active: 0, expired: 1, recalled: 2 }
end
