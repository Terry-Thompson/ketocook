require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all


user = User.create!(username: 'infinitedrift', password: 'password', email: 'Infinitedrift@gmail.com')
recipe = Recipe.create!(title: 'Blue Cotton', description: 'Cottage cheese with blueberries', user_id: 1)
cottage_cheese = Ingredient.create!(name: 'Cottage cheese', description: 'Dairy product')
first_ingredient = RecipeIngredient.create!(ingredient_id: cottage_cheese.id, recipe_id: recipe.id, quantity: 'One pint')
blueberries = Ingredient.create!(name: 'Blueberries', description: 'fruit')
second_ingredient = RecipeIngredient.create!(ingredient_id: blueberries.id, recipe_id: recipe.id, quantity: 'One cup')
