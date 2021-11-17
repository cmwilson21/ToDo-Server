# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "seeding database"

User.create(first_name: "Gatsby", username: "gatsbydog", last_name: "Dog", email: "gatsby@dog.com", password: "password", is_adult: true, date_of_birth: "09-09-1909")
User.create(first_name: "Bob", username: "bobman", last_name: "Bobo", email: "bob@bob.com", password: "password", is_adult: true, date_of_birth: "09-09-1909")

Todo.create(task: "Walk the dog", upvote: 4, completed: false, category: "pet", priority: 1)
Todo.create(task: "Water the plants", upvote: 3, completed: false, category: "house", priority: 2)
Todo.create(task: "Do dishes", upvote: 2, completed: true, category: "house", priority: 3)

puts "completed seeding"