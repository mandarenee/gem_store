# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create!(name: 'Pentagonal Gem', price: 345, description: "shiny with five sides")
Product.create!(name: 'Dodecahedron', price: 165, description: "lots of sides")
