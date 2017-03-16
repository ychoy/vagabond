class UsersController < ApplicationController

  before_action :require_login, only: [:edit, :update]
  before_action :set_user, only: [:edit, :show, :update, :destroy]
  before_action :authorize_user, only: [:edit, :update, :destroy]


  def index
    @users = User.all
  end

  def show
    @tips = @user.tips
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
    if @user.update_attributes(user_params)
        flash[:notice] = "Successfully updated profile."
        redirect_to user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.join(", ")
      redirect_to edit_user_path(@user)
    end
  end

  def destroy

    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "Successfully removed account and hints."
    redirect_to root_path

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :current_city, :password, :profile_image)
  end

  def set_user
    user_id = params[:id]
    @user = User.find_by_id(user_id)
  end

end
