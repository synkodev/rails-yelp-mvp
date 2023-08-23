# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Faker::Config.locale = 'pt-BR'

puts 'Destroying all data from the Restaurants table!'
Restaurant.destroy_all

puts 'Generating restaurants in the database...'

5.times do
  random_params = {
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: Restaurant::CATEGORIES.sample
  }
  puts "Adding #{random_params[:name]}..."
  Restaurant.create(random_params)
end

puts 'Restaurants added!'
