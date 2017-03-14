class UsersController < ApplicationController

  def index

  end

  def show
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :current_city, :password)
  end


end
