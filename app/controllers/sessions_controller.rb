class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.email = auth['info']['email']
    end
 
    session[:user_id] = @user.id
 
    render '/'
  end

  def destroy
    reset_session
    redirect_to '/'
  end

  def find_user
  end
end
