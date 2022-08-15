# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Eduardo", email: "eduardo@test.com", password: "123456", password_confirmation: "123456")

User.create(name: "john", email: "john@test.com", password: "123456", password_confirmation: "123456")

1.times do |i|
  Post.create(title: "My first post", content: "Content of my post #{i}", user_id: User.first.id)
end

1.times do |i|
  Post.create(title: "Post from John", content: "Content #{i} of post #{i}", user_id: User.second.id)
end