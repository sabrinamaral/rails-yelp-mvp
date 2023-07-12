# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
Faker::Config.locale = 'pt-BR'
Restaurant.destroy_all
puts 'Deleting old restaurants...'
puts 'Creating new ones...'
5.times do
  p name = Faker::Restaurant.name
  p address = Faker::Address.full_address
  p phone_number = Faker::PhoneNumber.cell_phone
  p category = Restaurant::CATEGORIES.sample
  restaurant = Restaurant.new(name: name, address: address, phone_number: phone_number, category: category)
  p restaurant.save
end
