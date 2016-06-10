# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
Shopper.create(name: 'Guest Shopper')
Shop.create
["1", "2", "3", "4", "5"].each do |number|
   Shop.first.blue_print_items.create(id: number.to_i, name: number, price: (2.99 + number.to_i))
 end
