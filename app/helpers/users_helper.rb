module UsersHelper

  def meal_plan #users helper
    binding.pry 
      if !empty_meal_plan
      ary = eval(@user.meal_plan)
      recipes = ary.collect{|i| Recipe.find(i)}
    end
  end

  def empty_meal_plan
    @user.meal_plan.empty? || @user.meal_plan = "[]"
  end

end
