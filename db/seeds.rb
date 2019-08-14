r# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
RioterSkill.destroy_all
Booking.destroy_all
Review.destroy_all
Rioter.destroy_all
Skill.destroy_all
User.destroy_all

user_needing_rioter = User.create!(email: 'spm471@nyu.edu', password: '123456')
user_rioter = User.create!(email: 'sebamatera3@gmail.com', password: '123456')

molotov = Skill.new(name: 'Molotov throwing')
jacking = Skill.new(name: 'Carjacking')
Skill.create(name: 'Window breaking')
Skill.create(name: 'Tear gas resistance')
Skill.create(name: 'Thick bones')
Skill.create(name: 'Fast as fuck')
Skill.create(name: 'Looks cool')
Skill.create(name: 'Hates police')

rioter1 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_1 = RioterSkill.new(
  rioter: rioter1,
  skill: molotov
  )
rioter_skill_1_1 = RioterSkill.new(
  rioter: rioter1,
  skill: jacking
  )

rioter2 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_2 = RioterSkill.new(
  rioter: rioter2,
  skill: Skill.all.sample
  )

rioter3 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_3 = RioterSkill.new(
  rioter: rioter3,
  skill: Skill.all.sample
  )

rioter4 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_4 = RioterSkill.new(
  rioter: rioter4,
  skill: Skill.all.sample
  )

rioter5 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_5 = RioterSkill.new(
  rioter: rioter5,
  skill: Skill.all.sample
  )

rioter6 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_6 = RioterSkill.new(
  rioter: rioter6,
  skill: Skill.all.sample
  )

rioter7 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_7 = RioterSkill.new(
  rioter: rioter7,
  skill: Skill.all.sample
  )

rioter8 = Rioter.new(
  name: Faker::Name.name,
  rate: [1, 2, 3, 4, 5].shuffle.first,
  description: Faker::Books::Dune.quote,
  user: user_rioter
  )
rioter_skill_8 = RioterSkill.new(
  rioter: rioter8,
  skill: Skill.all.sample
  )

rioter1.remote_picture_url = 'https://i.kym-cdn.com/entries/icons/facebook/000/006/131/angry_asian.jpg'
rioter1.save!

rioter2.remote_picture_url = 'https://i.pinimg.com/originals/09/57/7a/09577a766f8891e7c304ebbc2b33db97.jpg'
rioter2.save!

rioter3.remote_picture_url = 'https://i.pinimg.com/originals/09/57/7a/09577a766f8891e7c304ebbc2b33db97.jpg'
rioter3.save!

rioter4.remote_picture_url = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT62aT5NhgeaJYj2IljQ2xG3qQpCBcLurDMIF2j9XoFPZbXOqX9'
rioter4.save!

rioter5.remote_picture_url = 'https://www.leeboycetraining.com/wp-content/uploads/2016/01/1425993556_8355.jpg'
rioter5.save!

rioter6.remote_picture_url = 'https://i.dailymail.co.uk/i/newpix/2018/06/29/21/4DBC9DE400000578-0-Fans_of_the_Royal_family_grew_worried_about_Queen_Elizabeth_II_s-m-55_1530303342340.jpg'
rioter6.save!

rioter7.remote_picture_url = 'https://cdn1.i-scmp.com/sites/default/files/styles/1200x800/public/images/methode/2017/09/05/fc7ba5e4-91ff-11e7-b116-f4507ff9df92_1280x720_173545.JPG?itok=EJKk4LNj'
rioter7.save!

rioter8.remote_picture_url = 'https://previews.123rf.com/images/elnur/elnur1110/elnur111001891/10968758-man-with-noose-around-his-neck.jpg'
rioter8.save!

Booking.create(location: Faker::Address.city, start: DateTime.new(2019, 8, 1, 8), end: DateTime.new(2019, 8, 1, 17), user: user_needing_rioter, rioter: rioter1)

Booking.create(location: Faker::Address.city, start: DateTime.new(2019, 8, 1, 8), end: DateTime.new(2019, 8, 1, 17), user: user_needing_rioter, rioter: rioter8)

Booking.create(location: Faker::Address.city, start: DateTime.new(2019, 8, 1, 8), end: DateTime.new(2019, 8, 1, 17), user: user_needing_rioter, rioter: rioter5)

Review.create(rating: 4, content: 'pretty good job!', user: user_needing_rioter, rioter: rioter1)

Review.create(rating: 2, content: 'shit', user: user_needing_rioter, rioter: rioter1)
