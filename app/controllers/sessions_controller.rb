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

  def facebookAuth
    @user = User.find_or_create_by(uid: auth[:uid]) do |u|
      u.username = auth['info']['username']
      u.email = auth['info']['email']
    end
 
    login(@user)
    redirect_to user_path(@user)
  end

  def googleAuth
    # Get access tokens from the google server
    access_token = request.env["omniauth.auth"]
    user = User.from_omniauth(access_token)
    login(user)
    # Access_token is used to authenticate request made from the rails application to the google server
    user.google_token = access_token.credentials.token
    # Refresh_token to request new access_token
    # Note: Refresh_token is only sent once during the first request
    refresh_token = access_token.credentials.refresh_token
    user.google_refresh_token = refresh_token if refresh_token.present?
    user.save
    redirect_to user_path(current_user)
  end


  private
  
  def auth
    request.env['omniauth.auth']
  end
end
