# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CoffeeShop.destroy_all
coffee_shops = [
  {
    attributes:
      {
        name:         "Lof10",
        address:      "1 U Lam Terrace, Sheung Wan",
        district:     "Sheung Wan",
        wifi:         4,
        rating:        5
      },
    urls: [
      'https://thewanderingcaterpillardotcom.files.wordpress.com/2016/04/hong-kong-coffee-lof10-sheung-wan-2.jpg',
      'https://farm8.staticflickr.com/7481/15890500920_58f8e38125_h.jpg',
      'https://farm8.staticflickr.com/7550/16077095372_b06a4ab4e7_h.jpg',
      'http://www.wcity.com/images/stories/food/lof10.jpg'
    ]
  },
  {
    attributes:
      {
        name:         "Elephant Grounds",
        address:      "Shop C, G/F, 42-48, Fashion Walk, Paterson Street, Causeway Bay",
        district:     "Causeway Bay",
        wifi:         4,
        rating:        5
      },
    urls: [
      'http://www.wcity.com/images/stories/food/cafe_2016_2.jpg',
      'http://res.cloudinary.com/hio22hxcn/image/upload/v1451274955/tbk8xk2ew2olon6ld9li.jpg',
      'http://res.cloudinary.com/hio22hxcn/image/upload/v1451275052/dvshqon7pkbeyjhu5esj.jpg'
    ]
  },
  {
    attributes:
      {
        name:         "Artisan Cafe",
        address:      "23 Po Tuck Street, Shek Tong Tsui",
        district:     "Shek Tong Tsui",
        wifi:         4,
        rating:        3
      },
    urls: [
      'http://res.cloudinary.com/hio22hxcn/image/upload/v1463671859/ti7hw8suhksytr2jaifs.jpg',
      'http://res.cloudinary.com/hio22hxcn/image/upload/v1463671867/eb5n3mgcfq2uixaqnlzz.jpg',
      'http://res.cloudinary.com/hio22hxcn/image/upload/v1463671879/xvbheufuzvgheftikxtn.jpg',
      'http://res.cloudinary.com/hio22hxcn/image/upload/v1463671886/xgomgxyerdo5sbtniokk.jpg'
    ]
}]
coffee_shops.each do |coffee_shop|
  new_cs = CoffeeShop.create!(coffee_shop[:attributes])
  new_cs.photo_urls = coffee_shop[:urls]
end
