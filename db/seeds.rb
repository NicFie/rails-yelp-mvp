# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
bistrot = {name: "Bistrot Pierre", address: "Oyster Wharf, Mumbles", category: "french"}
black_boy =  {name: "Black Boy", address: "Killay Precinct, Swansea", category: "italian"}
castellamare = {name: "Castellamare", address: "Limeslade Bay, Mumbles", category: "italian"}
thai_bach = {name: "Thai Bach", address: "Brynymor Road, Uplands", category: "chinese"}
nishimura = {name: "Nishimura", address: "Brynymor Road, Uplands", category: "japanese"}

[bistrot, black_boy, castellamare, thai_bach, nishimura].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
