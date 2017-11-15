class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:edit, :update, :destroy, :show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save

    # redirect_to restaurant_path(@restaurant)
    redirect_to @restaurant
  end

  def edit
  end

  def update

    @restaurant.update(restaurant_params)

    redirect_to @restaurant
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  def restaurant_params
    params.require(:restaurant).permit(:address, :phone_number, :name, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
