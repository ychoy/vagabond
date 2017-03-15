class TipsController < ApplicationController

  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_tip, only: [:show, :edit, :update, :destroy]
  before_action :set_owner, only: [:edit, :update, :destroy]
  before_action :authorize_owner, only: [:edit, :update, :destroy]

  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def show
    @author = User.find(@tip.user_id)
  end

  def create
    @tip = current_user.tips.create(tip_params)
    city_id = session[:city]
    @city = City.find(city_id)
    @city.tips << @tip
    redirect_to @tip
  end

  def edit
  end

  def update
    @tip.update_attributes(tip_params)
    flash[:notice] = "Tip successfully updated"
    redirect_to @tip
  end

  def destroy
    @tip.destroy
    redirect_to root_path
  end

  private

  def tip_params
  #  params[:user_id] = current_user.id
    params.require(:tip).permit(:title, :body) #, :user_id)
  end

  def set_tip
    tip_id = params[:id]
    @tip = Tip.find_by_id(tip_id)
  end

  def set_owner
    @owner = @tip.user
  end

end
