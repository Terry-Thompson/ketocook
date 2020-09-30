class ApplicationController < ActionController::Base

  def current_user
    if id = session[:current_user_id]
      @current_user = User.find(id)
    end
  end

  def login(user)
    session[:current_user_id] = user.id
  end
end
