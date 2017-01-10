class CoffeeShopsController < ApplicationController

skip_before_action :authenticate_user!
before_action :set_coffee_shop, only: [:show, :edit, :update, :destroy]

  def index
    @coffee_shops = CoffeeShop.all
  end

  def show
  end

  def create
    @coffee_shop = CoffeeShop.new
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

end
