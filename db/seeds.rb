# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 136
# 147
InventoryItem.destroy_all
Product.destroy_all
p "products destroyed"
Restaurant.destroy_all
p "Restaurants destroyed"

#seeds restaurant
marius = Restaurant.create!(name: "Marius et Lucien", user:User.first)

#seeds products
bananes = Product.create!(name: "bananes", category: "fruits et légumes", unit:"kg")
carottes = Product.create!(name: "carottes", category: "fruits et légumes", unit:"kg")
oranges = Product.create!(name: "oranges", category: "fruits et légumes", unit:"kg")

#seeds inventory_items
inventory_bananes = InventoryItem.create!(product:bananes, quantity:"3", restaurant:marius)
inventory_carottes = InventoryItem.create!(product:carottes, quantity:"3", restaurant:marius)
inventory_oranges = InventoryItem.create!(product:oranges, quantity:"3", restaurant:marius)



