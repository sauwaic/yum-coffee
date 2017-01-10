class CoffeeShop < ApplicationRecord
  validates :name, presence: true
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: false }
  validates :wifi, inclusion: { in: [0,1,2,3,4,5] }
  validates :address, presence: true
  validates :district, presence: true

  has_attachments :photos, maximum: 5
end
