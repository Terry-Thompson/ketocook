class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]


  def index
    @user = current_user
    @recipes = Recipe.all
  end

  def show
    @user = current_user
    @recipe_ingredients = RecipeIngredient.where(recipe_id: @recipe.id)
  end

  def new
    @user = current_user
    @recipe = Recipe.new
      if session[:count]
        @count = session[:count]
        @count.times {@recipe.ingredients.build.recipe_ingredients.build}
      end
  end

  def count
    session[:count] = params[:ingredient_count].to_i
    redirect_to new_user_recipe_path(current_user)
  end

  def reset
    session[:count] = nil
    redirect_to new_user_recipe_path(current_user)
  end

  def edit
    @recipe = Recipe.find(params[:recipe_id])
  end

  def create
    @user = current_user
    @recipe = @user.recipes.build(recipe_params)
     
    binding.pry
    @recipe.save
    redirect_to user_recipe_path(@user, @recipe)
  end

 
  def update
    respond_to do |format|
      if @recipe.update(recipe_params)
        format.html { redirect_to @recipe, notice: 'Recipe was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipe }
      else
        format.html { render :edit }
        format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @recipe.destroy
    respond_to do |format|
      format.html { redirect_to recipes_url, notice: 'Recipe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipe_params
      params.require(:recipe).permit(
        :title, 
        :description, 
        :instructions, 
        :ingredient_count, 
        ingredient_ids: [],
        ingredients_attributes: [
          :name, 
          :description, 
        ],
        recipe_ingredients_attributes: [
          :quantity
        ]
      )
    end
end
