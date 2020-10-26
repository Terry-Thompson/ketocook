module RecipesHelper
  
  def quantity(ingredient)
    RecipeIngredient.find_by(recipe_id: @recipe.id, ingredient_id: ingredient.id).quantity
  end
end

