class UsersController < ApplicationController

  before_action :set_user, only: [:edit, :show, :update]

  # index will likely be moved
  def index
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :current_city, :password)
  end

  def set_user
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

end
