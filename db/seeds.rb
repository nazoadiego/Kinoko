Label.destroy_all
User.destroy_all

labels = %w[House\ Chores Languages School Painting Exercise Break]

labels.each do |label|
  Label.create!(name: label, goal: rand(6..10))
end

5.times do
  new_user = User.new(
    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: "123_456"
  )
  new_user.save!
end

puts "User created!"

Task.create(
  title: "Learning Korean",
  minutes: 60,
  seconds: 0,
  durhours: 60.0 / 60,
  user: User.last
)

Task.create(
  title: "Programming",
  minutes: 120,
  seconds: 40,
  durhours: (120.0 / 60) + (40.0 / 3600),
  user: User.last
)

Task.create(
  title: "Grocery Shopping",
  minutes: 180,
  seconds: 0,
  durhours: 180.0 / 60,
  user: User.last
)

Task.create(
  title: "Reading",
  minutes: 150,
  seconds: 40,
  durhours: (150.0 / 60) + (40.0 / 3600),
  user: User.last
)

Task.create(
  title: "Walking Fiona",
  minutes: 140,
  seconds: 50,
  durhours: (140.0 / 60) + (50.0 / 3600),
  user: User.last
)

puts "Tasks created"
