class CoffeeShop < ApplicationRecord
  validates :name, presence: true
  validates :rating, inclusion: { in: [1..5], allow_nil: false }
  validates :wifi, inclusion: { in: [0..5] }
  validates :address, presence: true
  validates :district, presence: true

  has_attachments :photos, maximum: 5
end
