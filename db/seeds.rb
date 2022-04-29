Label.destroy_all
User.destroy_all

User.create!(
  email: "admin@mail.kinoko",
  password: "123123",
  username: "MaxSettings"
)

labels = %w[House\ Chores Languages School Exercise Programming]

labels.each do |label|
  Label.create!(name: label, goal: 2)
end

# 5.times do
#   new_user = User.new(
#     username: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: "123_456"
#   )
#   new_user.save!
# end

# puts "User created!"

# Task.create(
#   title: "Learning Korean",
#   minutes: 60,
#   seconds: 0,
#   durhours: 60.0 / 60,
#   user: User.last
# )

# Task.create(
#   title: "Programming",
#   minutes: 120,
#   seconds: 40,
#   durhours: (120.0 / 60) + (40.0 / 3600),
#   user: User.last
# )

# Task.create(
#   title: "Grocery Shopping",
#   minutes: 180,
#   seconds: 0,
#   durhours: 180.0 / 60,
#   user: User.last
# )

# Task.create(
#   title: "Reading",
#   minutes: 150,
#   seconds: 40,
#   durhours: (150.0 / 60) + (40.0 / 3600),
#   user: User.last
# )

# Task.create(
#   title: "Walking Fiona",
#   minutes: 140,
#   seconds: 50,
#   durhours: (140.0 / 60) + (50.0 / 3600),
#   user: User.last
# )

# puts "Tasks created"

# User for demo

user = User.create(
  email: "admin@kinoko.app",
  password: "123456",
  username: "Admin"
)

user.save!

task_one = Task.create(
  title: "Water Plants",
  minutes: 10,
  seconds: 0,
  durhours: 10.0 / 60,
  user: user,
  done: true,
  timestamp: (Time.now - 300_000),
  labels: Label.where(name: "House Chores")
)

work_session_one = WorkSession.new
work_session_one.task = task_one
work_session_one.session_duration = (work_session_one.task.minutes.to_i * 60) + work_session_one.task.seconds.to_i
work_session_one.save

task_two = Task.create(
  title: "Cleaning my room",
  minutes: 20,
  seconds: 0,
  durhours: 20.0 / 60,
  user: user,
  done: true,
  timestamp: (Time.now - 500_000),
  labels: Label.where(name: "House Chores")
)

work_session_two = WorkSession.new
work_session_two.task = task_two
work_session_two.session_duration = (work_session_two.task.minutes.to_i * 60) + work_session_two.task.seconds.to_i
work_session_two.save

task_three = Task.create(
  title: "Dirty Dishes",
  minutes: 20,
  seconds: 0,
  durhours: 20.0 / 60,
  user: user,
  done: true,
  timestamp: (Time.now - 1_000_000),
  labels: Label.where(name: "House Chores")
)

work_session_three = WorkSession.new
work_session_three.task = task_three
work_session_three.session_duration = (work_session_three.task.minutes.to_i * 60) + work_session_three.task.seconds.to_i
work_session_three.save

task_four = Task.create(
  title: "Cleaning Toilet",
  minutes: 10,
  seconds: 0,
  durhours: 10.0 / 60,
  user: user,
  done: true,
  timestamp: (Time.now - 1_000_000),
  labels: Label.where(name: "House Chores")
)

work_session_four = WorkSession.new
work_session_four.task = task_four
work_session_four.session_duration = (work_session_four.task.minutes.to_i * 60) + work_session_four.task.seconds.to_i
work_session_four.save

task_five = Task.create(
  title: "Reading Korean",
  minutes: 60,
  seconds: 0,
  durhours: 60.0 / 60,
  user: user,
  done: true,
  timestamp: (Time.now - 600_000),
  labels: Label.where(name: "Languages")
)

work_session_five = WorkSession.new
work_session_five.task = task_five
work_session_five.session_duration = (work_session_five.task.minutes.to_i * 60) + work_session_five.task.seconds.to_i
work_session_five.save
