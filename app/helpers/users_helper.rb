module UsersHelper

  def meal_plan
    ary = eval(@user.meal_plan)
    recipes = ary.collect{|i| Recipe.find(i)}
  end

end
