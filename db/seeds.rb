# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Rioter.destroy_all

user_needing_rioter = User.create!(email: 'spm471@nyu.edu', password: '123456')
user_rioter = User.create!(email: 'sebamatera3@gmail.com', password: '123456')


rioter1 = Rioter.create!(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  # picture: 'https://i.kym-cdn.com/entries/icons/facebook/000/006/131/angry_asian.jpg',
  description: Faker::Demographic.race,
  user: user_rioter
  )

Booking.create(location: Faker::Address.city, start: DateTime.new(2019, 8, 1, 8), end: DateTime.new(2019, 8, 1, 17), user: user_needing_rioter, rioter: rioter1)

