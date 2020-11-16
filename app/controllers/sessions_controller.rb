class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username]) 
    if @user && @user.authenticate(params[:session][:password])
      login(@user)
      flash[:success] = "Successfully logged in"
      redirect_to user_path(@user)  
    else
      flash[:danger] = "Invalid email or password"
      redirect_to '/'
    end 
  end

  def destroy
    reset_session
    flash[:danger] = "Logged out."
    redirect_to '/'
  end

  def find_user
    User.find(current_user.id)
  end

  def omniauth
    binding.pry
    user = User.from_omniauth(auth)

    if user.valid?
      login(user)
      flash[:success] = "Successfully logged in via #{auth[:provider]}"
      redirect_to user_path(user)
    else
      flash[:danger] = user.errors.full_messages.join(", ")
      redirect_to '/'
    end
  end

  private
  
  def auth
    request.env['omniauth.auth']
  end
end
