module UsersHelper

  def random_recipe
    rng = rand(0..(@user.recipes.length-1))
    @user.recipes[rng]
  end

end
