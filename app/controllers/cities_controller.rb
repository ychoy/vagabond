class CitiesController < ApplicationController

  before_action :set_city, only: [:show]

  def index
    @cities = City.all
  end

  def show

  end

  private

  def city_params
    params(:city).permit(:name, :photo)
  end

  def set_city
    city_id = params[:id]
    @city = City.find_by_id(city_id)
  end

end
