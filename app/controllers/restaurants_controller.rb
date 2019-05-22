class RestaurantsController < ApplicationController
  def index
   @restaurants = Restaurant.all
  end

  def show

  end

  def new

    @restaurant = Restaurant.new(params[:restaurant])
    @restaurant.save

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

    # Restaurant.new(params[:restaurant])
    # @restaurant.save
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
