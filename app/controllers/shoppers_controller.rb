class ShoppersController < ApplicationController
  def index
    initialize_shopper
    initialize_trolley
    @items = Shop.first.blue_print_items
  end

  def edit
  end

  private
  def initialize_shopper
    @shopper = Shopper.first
    session[:shopper_id] = @shopper.id
  end

  def initialize_trolley
    @trolley = Trolley.first_or_create(shopper_id: session[:shopper_id])
  end
end
