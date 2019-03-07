class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(set_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = Review.all
  end

  # def edit
  # end

  # def update
  #   @restaurant = Restaurant.new(set_params)
  #   @restaurant.save
  #   redirect_to restaurant_path(set_params[:id])
  # end

  # def destroy
  #   @restaurant.delete
  #   redirect_to restaurants_path
  # end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def set_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
