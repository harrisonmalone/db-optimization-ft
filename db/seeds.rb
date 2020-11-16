20.times do 
  home = Home.create(
    name: Faker::Address.street_name,
    price_per_day: (200..1000).to_a.sample,
    guests: (2..6).to_a.sample,
    rooms: (2..6).to_a.sample
  )
  home.image.attach(
    io: File.open('/Users/harrisonmalone/Desktop/db-optimization-ft/app/assets/images/home.jpg'), 
    filename: "home.jpg" 
  )
  Address.create(
    street: Faker::Address.street_address + " " + Faker::Address.street_suffix,
    suburb: Faker::Address.city,
    country: Faker::Address.country,
    postcode: Faker::Address.postcode,
    home_id: home.id
  )
end
