class DishesController < ApplicationController
  before_action :set_dishes
  before_action :set_dish, only: [:edit, :update, :destroy]

  def index
  end
  
  def create
    dish = Dish.new(dish_params)
    if dish.save
      respond_to do |format|
        format.js 
      end
    else
      render :index
    end
  end
  
  def edit
    respond_to do |format|
      format.js
    end
  end

  def update
    if @dish.update(dish_params)
      respond_to do |format|
        format.js 
      end
    else
      render :index
    end
  end
  
  def destroy
    @dish.discard
    respond_to do |format|
      format.js 
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:name)
  end

  def set_dishes
    @dishes = Dish.all
  end

  def set_dish
    @dish = Dish.find(params[:id])
  end
end
