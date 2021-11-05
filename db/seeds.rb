# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "seeding database"

User.create(first_name: "Gatsby", last_name: "Dog", email: "gatsby@dog.com", password: "password", is_adult: true, date_of_birth: "09-09-1909")

Todo.create(task: "Walk the dog", user_id: 1, assignee: "fix this", upvote: 4, completed: false, category: "pet", priority: "high")

puts "completed seeding"