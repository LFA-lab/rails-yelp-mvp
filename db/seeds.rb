# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do |i|
  Restaurant.create!(
    name: "Restaurant #{i + 1}",
    address: "Address #{i + 1}",
    phone_number: "012345678#{i}",
    category: ["chinese", "italien", "japanese","french", "belgian"].sample
  )
end

puts "Seeding completed!"


