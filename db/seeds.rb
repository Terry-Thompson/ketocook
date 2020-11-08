require 'faker'

Recipe.destroy_all
RecipeIngredient.destroy_all
Ingredient.destroy_all

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
Make filling: in  large bowl, combine ½ c. tomato sauce, ground meats, cauliflower rice, scallions, and parsley. Season with salt and pepper.
Spread a thin layer of sauce on the bottom of a large baking dish. Using a paring knife, cut out the hard triangular rib from each cabbage leaf. Place about ⅓ cup filling into one end of each leaf, then roll up, tucking in the sides as you roll. Place rolls seam side-down on top of sauce in baking dish. Spoon remaining sauce on top of cabbage rolls. Bake 45 minutes to 55 minutes, until the meat is cooked through and internal temperature reaches 150°”
Garnish with more parsley before serving."
},
{
  title: "Pizza",
  description: "Keto pizza, minus carbs",
  user_id: 1,
  instructions: "Preheat the oven to 400°F (200°C).
Start by making the crust. Crack eggs into a medium-sized bowl and add shredded cheese. Give it a good stir to combine.
Use a spatula to spread the cheese and egg batter on a baking sheet lined with parchment paper. You can form two round circles or just make one large rectangular pizza. Bake in the oven for 15 minutes until the pizza crust turns golden. Remove and let cool for a minute or two.
Increase the oven temperature to 450°F (225°C).
Spread tomato sauce on the crust and sprinkle oregano on top. Top with cheese and place the pepperoni and olives on top.
Bake for another 5-10 minutes or until the pizza has turned a golden brown color.
Serve with a fresh salad on the side.
"
},
{
  title: "Baked salmon with pesto and broccoli",
  description: "",
  user_id: 1,
  instructions: "Place the salmon skin-side down in a greased baking dish. Spread pesto on top, and salt and pepper to taste. Spread out the broccoli around it.
Bake in the oven at 350°F (175°C) for about 20 minutes, or until the salmon flakes easily with a fork.
Meanwhile, stir the sauce ingredients together. Pesto, mayonnaise, and yogurt."
},
{
  title: "Buffalo drumsticks with chili aioli",
  description: "",
  user_id: 1,
  instructions: "Preheat the oven to 450° (220°C).
Put the drumsticks in a plastic bag.
Mix the ingredients for the marinade in a small bowl and pour into the plastic bag. Shake the bag thoroughly and let marinate for 10 minutes in room temperature.
Coat a baking dish with oil. Place the drumsticks in the baking dish and let bake for 30–40 minutes or until they are done and have turned a nice color.
Mix together mayonnaise, garlic and chili."
},
{
  title: "Italian keto plate",
  description: "Simple and fast meal",
  user_id: 1,
  instructions: "Put tomatoes, prosciutto, cheese and olives on a plate. Serve with olive oil and season with salt and pepper to taste."
},
{
  title: "Baked celery root with gorgonzola",
  description: "low carb appetizer",
  user_id: 1,
  instructions: "Preheat the oven to 400°F (200°C).
Wash the celery root. You don’t need to peel it. Cut away the roots and slice into ½-inch slices.
Place on a baking sheet with parchment paper. Brush olive oil on both sides and sprinkle a generous amount of sea salt on top.
Bake for 45 minutes, or until the celery root has turned golden brown and soft.
Meanwhile, sauté mushrooms in butter until golden and soft. Season with salt and pepper.
Roast the nuts quickly in a dry, hot frying pan, until fragrant. Let them cool slightly, and chop them coarsely.
Mix red onions, spinach, mushrooms and hazelnuts in a bowl.
When the root celery is ready, place on plates and add the salad on top. Serve with blue cheese and a few drops of olive oil."},
{
  title: "BLT with cloud bread",
  description: "Cloud bread is Gluten-free and grain-free",
  user_id: 1,
  instructions: "Preheat oven to 300°F (150°C).
Separate the eggs, with egg whites in one bowl and egg yolks in another. Note, egg whites whip better in a metal or ceramic bowl as opposed to plastic.
Whip egg whites together with salt (and cream of tartar, if you are using any) until very stiff, preferably using a hand held electric mixer. You should be able to turn the bowl over without the egg whites moving.
Add cream cheese, psyllium husk, egg yolks, and baking powder and mix well.
Gently fold the egg whites into the egg yolk mixture — try to keep the air in the egg whites.
Place two dollops of the mixture per serving on a paper-lined baking tray. Spread out the circles with a spatula to about ½ inch (1 cm) thick pieces.
Bake in the middle of the oven for about 25 minutes, until they turn golden.
Building the BLT
Fry the bacon in a skillet on medium high heat until crispy.
Place the cloud bread pieces top-side down.
Spread mayonnaise on each bread.
Place lettuce, tomato and fried bacon in layers between the bread halves."
}
])

ingredients = Ingredient.create!([
{name: "Diced Tomatoes", description: "Can of diced tomatoes"},
{name: "Apple Cider Vinegar", description: "vinegar"},
{name: "Red Pepper", description: "flakes"},
{name: "Onion Powder", description: ""},
{name: "Garlic Powder", description: ""},
{name: "Oregano", description: "Dried"},
{name: "Kosher Salt", description: ""},
{name: "Black Pepper", description: ""},
{name: "Olive Oil", description: "extra-virgin, or coconut oil"},
{name: "Cabbage Leaves", description: ""},
{name: "Ground Beef", description: ""},
{name: "Ground Pork", description: ""},
{name: "Riced Cauliflower", description: "specially chopped"},
{name: "Green Onions", description: "Thinly sliced"},
{name: "Parsely", description: "chopped"},
{name: "Eggs", description: ""},
{name: "Shredded Cheese", description: "preferably mozzerella or provolone"},
{name: "Tomato Sauce", description: "unsweetened"},
{name: "Pepperoni", description: ""},
{name: "Olives", description: ""},
{name: "Green Pesto", description: ""},
{name: "Mayonnaise", description: ""},
{name: "Greek Yogurt", description: "Greek Yogurt is more strained than regular yogurt by removing excess whey"},
{name: "Salmon", description: "Boneless fillets"},
{name: "Broccoli", description: ""},
{name: "Smoked paprika powder", description: "or smoked chili powder"},
{name: "Garlic Clove", description: "minced"},
{name: "Chicken", description: "drumsticks or wings"},
{name: "White wine vinegar", description: ""},
{name: "Tomato paste", description: ""},
{name: "Salt", description: ""},
{name: "Paprika", description: "powder"},
{name: "Tabasco", description: "hot sauce"},
{name: "Mozarella cheese", description: "fresh"},
{name: "Prosciutto", description: "Thinly sliced uncooked ham"},
{name: "Tomatoes", description: "vegetable"},
{name: "Celery Root", description: "The root of the celery plant"},
{name: "Mushrooms", description: "chopped"},
{name: "Butter", description: "dairy product"},
{name: "Hazelnuts", description: "nuts"},
{name: "Onion", description: ""},
{name: "Spinach", description: ""},
{name: "Blue cheese", description: "or gorgonzola, or roquefort cheese at room temperature"},
{name: "Cream Cheese", description: "a special kind of cheese"},
{name: "Psyllium husk powder", description: "psyllium seed is gathered and is stone ground to harvest the husk, which is then made into the powder"},
{name: "Baking powder", description: ""},
{name: "Cream of tarter", description: "a dry, powdery, acidic byproduct of fermenting grapes into wine"},
{name: "Bacon", description: "pork product"},
{name: "Lettuce", description: ""}
])

recipe_ingredients = RecipeIngredient.create!([
{recipe_id: 1, ingredient_id: 1, quantity:"1 (14-oz.) can"},
{recipe_id: 1, ingredient_id: 2, quantity:"1 tbsp"},
{recipe_id: 1, ingredient_id: 3, quantity:"1/2 tsp"},
{recipe_id: 1, ingredient_id: 4, quantity:"1 tsp"},
{recipe_id: 1, ingredient_id: 5, quantity:"1 tsp"},
{recipe_id: 1, ingredient_id: 6, quantity:"1 tsp"},
{recipe_id: 1, ingredient_id: 7, quantity:""},
{recipe_id: 1, ingredient_id: 8, quantity:""},
{recipe_id: 1, ingredient_id: 9, quantity:"1/4 cup"},
{recipe_id: 1, ingredient_id: 10, quantity:"12"},
{recipe_id: 1, ingredient_id: 11, quantity:"1 lb"},
{recipe_id: 1, ingredient_id: 12, quantity:"3/4 lb"},
{recipe_id: 1, ingredient_id: 13, quantity:"1 cup"},
{recipe_id: 1, ingredient_id: 14, quantity:"3"},
{recipe_id: 1, ingredient_id: 15, quantity:"1/4 cup"},
{recipe_id: 1, ingredient_id: 16, quantity:"4"},
{recipe_id: 2, ingredient_id: 17, quantity:"11 oz"},
{recipe_id: 2, ingredient_id: 18, quantity:"3 tbsp"},
{recipe_id: 2, ingredient_id: 19, quantity:"1 1/2 oz"},
{recipe_id: 2, ingredient_id: 20, quantity: ""},
{recipe_id: 2, ingredient_id: 6, quantity:"1 tsp"},
{recipe_id: 3, ingredient_id: 21, quantity:"4 tbsp"},
{recipe_id: 3, ingredient_id: 22, quantity:"1 cup"},
{recipe_id: 3, ingredient_id: 23, quantity:"1/2 cup"},
{recipe_id: 3, ingredient_id: 24, quantity:"2 lbs"},
{recipe_id: 3, ingredient_id: 25, quantity:"1 lb"},
{recipe_id: 4, ingredient_id: 22, quantity:"1/3 cup"},
{recipe_id: 4, ingredient_id: 26, quantity:"1 tbsp"},
{recipe_id: 4, ingredient_id: 27, quantity:"1"},
{recipe_id: 4, ingredient_id: 28, quantity:"2 lbs"},
{recipe_id: 4, ingredient_id: 9, quantity:"2 tbsp"},
{recipe_id: 4, ingredient_id: 29, quantity:"2 tbsp"},
{recipe_id: 4, ingredient_id: 30, quantity:"1 tbsp"},
{recipe_id: 4, ingredient_id: 31, quantity:"1 tsp"},
{recipe_id: 4, ingredient_id: 32, quantity:"1 tsp"},
{recipe_id: 4, ingredient_id: 33, quantity:"1 tbsp"},
{recipe_id: 5, ingredient_id: 34, quantity:"7 oz"},
{recipe_id: 5, ingredient_id: 35, quantity:"7 oz"},
{recipe_id: 5, ingredient_id: 36, quantity:"2"},
{recipe_id: 5, ingredient_id: 9, quantity:"1/3 cup"},
{recipe_id: 5, ingredient_id: 20, quantity:"10 green"},
{recipe_id: 6, ingredient_id: 37, quantity:"1 lb"},
{recipe_id: 6, ingredient_id: 9, quantity:"3 tbsp"},
{recipe_id: 6, ingredient_id: 38, quantity:"3 oz"},
{recipe_id: 6, ingredient_id: 39, quantity:"3 tbsp"},
{recipe_id: 6, ingredient_id: 40, quantity:"2 oz"},
{recipe_id: 6, ingredient_id: 41, quantity:"1 red"},
{recipe_id: 6, ingredient_id: 42, quantity:"3 oz baby"},
{recipe_id: 6, ingredient_id: 43, quantity:"5 oz"},
{recipe_id: 7, ingredient_id: 16, quantity:"3"},
{recipe_id: 7, ingredient_id: 44, quantity:"4 oz"},
{recipe_id: 7, ingredient_id: 31, quantity:"1 pinch"},
{recipe_id: 7, ingredient_id: 45, quantity:"1/2 tbsp"},
{recipe_id: 7, ingredient_id: 46, quantity: "1/2 tsp"},
{recipe_id: 7, ingredient_id: 47, quantity: "1/4 tsp"},
{recipe_id: 7, ingredient_id: 22, quantity: "2 tbsp"},
{recipe_id: 7, ingredient_id: 48, quantity: "5 oz"},
{recipe_id: 7, ingredient_id: 49, quantity: "2 oz"},
{recipe_id: 7, ingredient_id: 36, quantity: "1 thinly sliced"}
])
