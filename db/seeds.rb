# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if Rails.env.development?
  Book.create!(title: "Twilight")
  Book.create!(title: "The Hunger Games")
  Book.create!(title: "Ready Player One")
  Book.create!(title: "Cinder")
  Book.create!(title: "The Sisters Grimm")
end

if Rails.env.production?
  Book.create!(title: "Harry Potter")
  Book.create!(title: "The Dark Artifices")
  Book.create!(title: "The Lightning Thief")
  Book.create!(title: "The Mortal Instruments")
  Book.create!(title: "The Infernal Devices")
end
