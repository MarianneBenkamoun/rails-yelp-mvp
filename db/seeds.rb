
5.times do
  restaurant = Restaurant.new(name: "Le "+Faker::BossaNova.artist,
                category: "french",
                address: Faker::Address.street_address,
                phone_number: Faker::PhoneNumber.phone_number)
  restaurant.save!
  5.times do
  review = Review.new(content: "super !", rating: 5, restaurant:restaurant)
  end
end


