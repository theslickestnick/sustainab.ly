# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
RestaurantFood.destroy_all
Exchange.destroy_all
Organization.destroy_all

20.times do 
    Restaurant.create(:name => Faker::Restaurant.name, :street_address => Faker::Address.street_address, 
    :city => Faker::Address.city, :state => Faker::Address.state, :zip_code => Faker::Address.zip_code, 
    :contact_email => Faker::Internet.email, :phone_number => Faker::PhoneNumber.phone_number)
end

150.times do 
    RestaurantFood.create(:food_type => Faker::Food.dish, :quantity => rand(20..100), :restaurant_id => Restaurant.all.sample.id, :use_by => Faker::Date.forward(days: 100), :notes => Faker::Lorem.paragraph)
end

30.times do
    Organization.create(:name => Faker::Restaurant.name, :street_address => Faker::Address.street_address,
        :city => Faker::Address.city, :state => Faker::Address.state, :zip_code => Faker::Address.zip_code,
        :contact_email => Faker::Internet.email, :phone_number => Faker::PhoneNumber.phone_number)
end

5.times do
    Exchange.create(restaurant_id: Restaurant.all.sample.id , organization_id: Organization.all.sample.id, status: false, notes: Faker::Lorem.paragraph)
end

10.times do
    Exchange.create(restaurant_id: Restaurant.all.sample.id , status: true, notes: Faker::Lorem.paragraph)
end



