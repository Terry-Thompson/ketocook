class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.image = auth['info']['image']
    end
 
    session[:user_id] = @user.id
 
    render '/'
  end

  def destroy
    reset_session
    redirect_to '/'
  end

  def find_user
    if id = params[:user][:name].to_i
      @user = User.find(id)
    else
      @user = User.find_by_name(params[:user][:name])
    end
  end
end
