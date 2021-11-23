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

  5.times do
    new_task = Task.new(
      title: "Learning Korean",
      minutes: 60,
      seconds: 0,
      user: new_user
    )
    new_task.save!
  end
end

puts "Task created!"
