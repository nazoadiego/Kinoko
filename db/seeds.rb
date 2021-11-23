# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Task.destroy_all

5.times do
  new_user = User.new(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: 123_456
  )
  new_user.save!
end

puts "User created!"

Task.create(
  title: "Learning Korean",
  minutes: 60,
  seconds: 0,
  user: new_user
)

Task.create(
  title: "Programming",
  minutes: 120,
  seconds: 80,
  user: new_user
)

Task.create(
  title: "Grocery Shopping",
  minutes: 180,
  seconds: 0,
  user: new_user
)

Task.create(
  title: "Reading",
  minutes: 150,
  seconds: 40,
  user: new_user
)

Task.create(
  title: "Walking Fiona",
  minutes: 140,
  seconds: 50,
  user: new_user
)
