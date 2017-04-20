# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts "starting the seed"

cocktail_json = open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read

ingredients_list = JSON.parse(cocktail_json)



ingredients_list["drinks"].each do |hash|
 Ingredient.create(name: hash["strIngredient1"])
end





# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
