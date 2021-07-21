# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning database..."

Garden.destroy_all

Garden.create!(
  name: "Eden",
  banner_url: "https://www.thespruce.com/thmb/pc7-npoxf5h5UEzF-1xRzMtkW7o=/960x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/small-garden-ideas-and-inspiration-4101842-01-5e0462c2365e42de86a4f3ebc2152c1b.jpg"
)

Garden.create!(
  name: "Sky",
  banner_url: "https://cdn.mos.cms.futurecdn.net/deqfGXD9AMbBhXf75irkdg-1280-80.jpg.webp"
)

Garden.create!(
  name: "Fairy",
  banner_url: "https://cdn.mos.cms.futurecdn.net/khm4de9CSFMemPu2RGrtSQ-768-80.jpg.webp"
)

puts "Finished seeding."
