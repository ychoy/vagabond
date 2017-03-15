class CitiesController < ApplicationController

  before_action :set_city, only: [:show]
  before_action :require_login, only: [:new, :create, :edit, :update]

  def index
    @cities = City.all
  end

  def show
    set_city_cookie
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create(city_params)
    redirect_to @city
  end

  def edit
  end

  def update
  end

  private

  def city_params
    params(:city).permit(:name, :photo)
  end

  def set_city
    city_id = params[:id]
    @city = City.find_by_id(city_id)
  end

  def set_city_cookie
    session[:city] = @city.id
  end

end
