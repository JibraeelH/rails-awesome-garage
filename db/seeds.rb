# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Car.destroy_all
Owner.destroy_all

owner1 = Owner.create(nickname: "Geoffrey")
owner2 = Owner.create(nickname: "Billy")

Car.create(brand: "Mercedes-Benz", model: "G-Class", year: 2010, fuel: "Petrol", owner: owner1)
Car.create(brand: "Mercedes-Benz", model: "A-Class", year: 2016, fuel: "Diesel", owner: owner2)
