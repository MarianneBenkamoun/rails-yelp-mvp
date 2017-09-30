class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]


  def index
    @restaurants = Restaurant.all
  end


  # def update
  #   if @restaurant.update(restaurant_params)
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render :edit
  def show
    # assigns the requested restaurant as @restaurant (FAILED - 2)
    # / @restaurant = Restaurant.find(params[:id])/
  end
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
   # / @restaurant = Restaurant.find(params[:id])/
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to restaurant_path(@restaurant)
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end


  #   assigns a new restaurant as @restaurant (FAILED - 3)
  # POST create
  #   with valid params
  #     creates a new Restaurant (FAILED - 4)
  #     assigns a newly created restaurant as @restaurant (FAILED - 5)
  #     redirects to the created restaurant (FAILED - 6)
  #   with invalid params
  #     assigns a newly created but unsaved restaurant as @restaurant (FAILED - 7)
  #     re-renders the 'new' template (FAILED - 8)



end
