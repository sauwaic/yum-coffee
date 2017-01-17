class District < ApplicationRecord
  has_many :coffee_shops

  validates :region, inclusion: { in: ["Hong Kong Island", "Kowloon", "New Territories", "Other"] }

end
