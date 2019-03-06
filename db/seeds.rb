# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom1',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:        '02340nnj092',
    category:      'indian'
  },
  {
    name:         'Dishoom2 Pizza',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:        '02340nnj092',
    category:      'italian'
  },
  {
    name:         'Dishoom3 eiffel',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:        '02340nnj092',
    category:     'french'
  },
  {
    name:         'Dishoom4 baggles',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:        '02340nnj092',
    category:     'belgian'
  },
  {
    name:         'Dishoom5 hongknog',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:        '02340nnj092',
    category:     'japanese'
  }
]
Restaurant.create!(restaurants_attributes)

# puts 'Creating reviews...'

# reviews_attributes = [
#   {
#     content:         'Dishoom',
#     rating:        5,
#     restaurant_id: 1
#   },
#   {
#     content:       'boomba',
#     rating:        4,
#     restaurant_id: 2
#   },
#   {
#     content:         'bidini',
#     rating:        5,
#     restaurant_id: 2
#   },
#   {
#     content:         'bello',
#     rating:        2,
#     restaurant_id: 4
#   },
#   {
#     content:         'badabum',
#     rating:        1,
#     restaurant_id: 4
#   }
# ]

# Review.create!(reviews_attributes)

puts 'Finished!'
