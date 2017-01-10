class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @coffee_shops = CoffeeShop.all
  end
end
