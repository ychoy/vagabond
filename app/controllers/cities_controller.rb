class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
  end

  def new
    @city = City.new
  end

  def create
    @city = City.create()
    redirect_to @city
  end

  def edit
  end

  def update
  end


  private

  def set_city
    city_id = params[:id]
    @city = City.find_by_id(city_id)
  end

end
