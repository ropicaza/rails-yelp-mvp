require 'faker'

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end