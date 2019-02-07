# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

dan = User.create(name: "Dan")
sivan = User.create(name: "Sivan")

cheese = Ingredient.create(name: "Cheese")
sauce = Ingredient.create(name: "Sauce")
dough = Ingredient.create(name: "Dough")
peanuts = Ingredient.create(name: "Peanuts")

tacos = Recipe.create(name: "Tacos", cook_time: 30, user_id: 1)
salad = Recipe.create(name: "Salad", cook_time: 10, user_id: 2)

ri1 = RecipeIngredient.create(recipe_id: 1, ingredient_id: 1)

peanuts = Allergen.create(name: "Peanuts", user_id: 1, ingredient_id: 4)
cheese = Allergen.create(name: "Cheese", user_id: 1, ingredient_id: 1)
