class ShoppersController < ApplicationController
  def index
    @shopper = Shopper.first
    session[:shopper_id] = @shopper.id
    @items = Item.all
  end

  def edit
  end
end
