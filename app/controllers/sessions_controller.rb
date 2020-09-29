class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:session][:username]) 
binding.pry
  end

  def destroy
    reset_session
    redirect_to '/'
  end

  def find_user
  end


  private
  
  def auth
    request.env['omniauth.auth']
  end
end
