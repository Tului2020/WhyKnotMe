class Api::UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in!(@user)
      render :show
    else
      render json: @user.errors.full_messages, status: 401
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def index
    @users = User.all
  end

  
  def update 
    @user = User.find_by(id: params[:id])
    # need to decide what kinda information we need to be able to update first
  end


  private
  def user_params
    params.require(:user).permit(:username, :password, :first_name, :last_name, :email)
    # a request needs to be in the form of user[username], user[password], user[first_name], user[last_name], user[email]
  end

end
