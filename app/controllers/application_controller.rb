class ApplicationController < ActionController::Base

  add_flash_types :danger, :info, :warning, :success
protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do 
    |exception|
    redirect_to '/'
    flash[:danger] = "Access Denied."
  end
  

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
    binding.pry
  end

  def logged_in?
    !!current_user
  end

  def authentication_required
    if !logged_in?
      redirect_to '/'
    end
  end

end
