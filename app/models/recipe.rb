class Recipe < ApplicationRecord
  belongs_to :user
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients, inverse_of: :recipes
  accepts_nested_attributes_for :ingredients, :recipe_ingredients
  validates :title, uniqueness: true


  def self.create_from_params(user,recipe_params)
    
  ##create the Recipe first##
    recipe = Recipe.new
    recipe.user_id = user.id
    recipe.title = recipe_params[:title]
    recipe.description = recipe_params[:description]
    recipe.instructions = recipe_params[:instructions]
    recipe.save
    recipe = Recipe.find_by(title: recipe.title)
  ##then create Ingredients if there##
   ia = recipe_params[:ingredients_attributes]
      
      if ia.values.all?{|ip| ip.values[0..1] != ""}
    ia = recipe_params[:ingredients_attributes]
    ia.each do |element, attributes|
      ingredient = Ingredient.create(
        name: attributes[:name],
        description: attributes[:description]
      )
      ingredient.save
      ingredient = Ingredient.find_by(name:attributes[:name])
      
  ##then create RecipeIngredient##
      ring = RecipeIngredient.create(
        recipe_id: recipe.id,
        ingredient_id: ingredient.id,
        quantity: attributes[:recipe_ingredients_attributes]["0"][:quantity]
      )
      ring.save 
      end #of iteration block

      recipe
    end #of if statement
    
  end #of self.create_from_params 

end
