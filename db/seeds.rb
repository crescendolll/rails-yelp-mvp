require 'faker'

Restaurant.destroy_all
puts "Start seeding 10 fake restaurants"


10.times do
  new_restaurant = Restaurant.new({
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: CATEGORIES.sample
  })
  new_restaurant.save
end

puts "Finished seeding"
