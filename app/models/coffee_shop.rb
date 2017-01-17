class CoffeeShop < ApplicationRecord
  validates :name, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: false }
  validates :wifi, inclusion: { in: [0,1,2,3,4,5] }
  validates :address, presence: true
  validates :district, presence: true
  validates :wifi, inclusion: { in: ["Less than 10", "10 - 25", "25 - 50", "Over 50"] }

  has_attachments :photos, maximum: 5
end
