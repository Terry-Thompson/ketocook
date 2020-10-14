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

recipes = Recipe.create!([
{
  title: "Stuffed Cabbage",
  description: "Low carb version of stuffed cabbage",
  user_id: 1,
  instructions: "FOR THE SAUCE:
Preheat oven to 375°. Puree tomatoes, apple cider vinegar, red pepper flakes, onion powder, garlic powder, and oregano in a blender; season with salt and pepper.
In a large deep skillet (or large pot) over medium heat, heat oil. Add pureed tomato sauce, bring to a simmer, then lower to medium-low and simmer for 20 minutes, until slightly thickened.
FOR THE CABBAGE ROLLS:
In a large pot of boiling water, blanch cabbage leaves until tender and flexible, about 1 minute. Set aside.
Make filling: in a large bowl, combine ½ c. tomato sauce, ground meats, cauliflower rice, scallions, and parsley. Season with salt and pepper.
Spread a thin layer of sauce on the bottom of a large baking dish. Using a paring knife, cut out the hard triangular rib from each cabbage leaf. Place about ⅓ cup filling into one end of each leaf, then roll up, tucking in the sides as you roll. Place rolls seam side-down on top of sauce in baking dish. Spoon remaining sauce on top of cabbage rolls. Bake 45 minutes to 55 minutes, until the meat is cooked through and internal temperature reaches 150°”
Garnish with more parsley before serving."
}])

ingredients = Igredient.create!([
{
  name: "Diced Tomatoes",
  description: "Can of diced tomatoes"
},
{
  name: "Apple Cider Vinegar",
  description: "vinegar"
},
{
  name: "Red Pepper",
  description: "flakes"
},
{
  name: "Onion Powder",
  description: ""
},
{
  name: "Garlic Powder",
  description: ""
},
{
  name: "Oregano",
  description: "Dried"
},
{
  name: "Kosher Salt",
  description: "",
},
{
  name: "Black Pepper",
  description: "",
},
{
  name: "Olive Oil",
  description: "extra-virgin"
},
{
  name: "Cabbage Leaves",
  description: ""
},
{
  name: "Ground Beef",
  description: ""
},
{
  name: "Ground Pork",
  description: ""
},
{
  name: "Riced Cauliflower",
  description: "specially chopped"
},
{
  name: "Green Onions",
  description: "Thinly sliced"},
{
  name: "Parsely",
  description: "chopped"
}])

