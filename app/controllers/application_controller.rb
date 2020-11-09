class ApplicationController < ActionController::Base
  before_action :check_user
  add_flash_types :danger, :info, :warning, :success

  def current_user
    if id = session[:current_user_id]
      @current_user = User.find(id)
    end
  end

  def login(user)
    session[:current_user_id] = user.id
  end

  def random_meals
    recipes = []
    @user.recipes.each{|recipe|recipes<<recipe.id}
    @user.meal_plan = ""
    @user.save
    @user.meal_plan << recipes.sample(7).to_s
    @user.save
  end

  def check_user

  end
end



