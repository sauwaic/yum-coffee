class CoffeeShopsController < ApplicationController

  skip_before_action :authenticate_user!
  before_action :set_coffee_shop, only: [:show, :edit, :update, :destroy]

  def index
    @coffee_shops = CoffeeShop.order('name ASC')
  end

  def show
  end

  def new
    @coffee_shop = CoffeeShop.new
  end

  def create
    coffee_shop = CoffeeShop.new(coffee_shop_params)
    coffee_shop.save
    redirect_to coffee_shop_path(coffee_shop)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_coffee_shop
    @coffee_shop = CoffeeShop.find(params[:id])
  end

  def coffee_shop_params
    params.require(:coffee_shop).permit(:name, :rating, :wifi, photos: [])
  end

end
