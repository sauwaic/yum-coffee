# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CoffeeShop.destroy_all
coffee_shops_attributes = [
  {
    name:         "Lof10",
    address:      "Soho, Hong Kong",
    wifi:         4,
    rating:        5
  },
  {
    name:         "Why50",
    address:      "Sheung Wan, Hong Kong",
    wifi:         4,
    rating:        5
  },
  {
    name:         "Starbucks",
    address:      "Sheung Wan",
    wifi:         4,
    rating:        3
  }
]
coffee_shops_attributes.each { |params| CoffeeShop.create!(params) }
