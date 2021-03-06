class TipsController < ApplicationController
  before_action :require_login,     only: [:new, :create, :edit, :update, :destroy]
  before_action :set_tip,           only: [:show, :edit, :update, :destroy]
  before_action :set_city_for_tip,  only: [:new, :edit]
  before_action :set_owner,         only: [:edit, :update, :destroy]
  before_action :authorize_owner,   only: [:edit, :update, :destroy]
  before_action :is_admin?,          only: [:create]

  def index
    @tips = Tip.all
  end

  def new
    @tip = Tip.new
  end

  def show
    @city = City.find_by_id(@tip.city_id)
    @author = @tip.user
  end

  def create
    if valid_city? && valid_tip_params? && is_admin?
      @tip = current_user.tips.create(tip_params)
      @city=City.find(tip_params[:city_id])
      @city.tips << @tip
      flash[:notice] = tip_rename + " successfully created"
      redirect_to @tip
    else
      flash[:error] = @tip.errors.full_messages.join(", ")
      redirect_to new_tip_path
    end
  end

  def edit
  end

  def update
    @tip.update_attributes(tip_params)
    flash[:notice] = tip_rename + " successfully updated"
    redirect_to @tip
  end

  def destroy
    @tip.destroy
    redirect_to root_path
  end

  private

  def tip_params
  #  params[:user_id] = current_user.id
    params.require(:tip).permit(:title, :body, :city_id) #, :user_id)
  end

  def set_tip
    tip_id = params[:id]
    @tip = Tip.find_by_id(tip_id)
  end

  def set_owner
    @owner = @tip.user
  end

  def set_city_for_tip
    if @tip
      @selected_city = @tip.city_id
    elsif params[:city]
      city_id = params[:city]
      @city = City.find(city_id)
      @selected_city = @city.id
    else
      @selected_city = nil
    end
  end

  def valid_city?
    City.find_by_id(tip_params[:city_id])
  end

  def valid_tip_params?
    current_user.tips.new(tip_params).valid?
  end

end
