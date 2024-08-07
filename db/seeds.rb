require 'faker'

10.times do
  restaurant = Restaurant.new(name: Faker::Restaurant.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.phone_number, category: %w[chinese italian japanese french belgian].sample)
  restaurant.save
  3.times do
    Review.create!(restaurant: restaurant, rating: rand(5), content: Faker::Restaurant.review)
  end
end
