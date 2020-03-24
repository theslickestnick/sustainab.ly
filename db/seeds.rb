# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
RestaurantFood.destroy_all

20.times do 
    Restaurant.create(:name => Faker::Restaurant.name, :street_address => Faker::Address.street_address, :city => Faker::Address.city)
end

150.times do 
    RestaurantFood.create(:food_type => Faker::Food.dish, :quantity => rand(20..100), :restaurant_id => Restaurant.all.sample.id)
end

