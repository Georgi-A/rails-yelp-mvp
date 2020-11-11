puts "cleaning up database"
Restaurant.destroy_all
puts "database is clean"

category = ['chinese', 'italian', 'japanese', 'french', 'belgian']

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: category.sample
  )
end
