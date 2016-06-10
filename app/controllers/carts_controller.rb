class CartsController < ApplicationController
  def edit
    add_item_to_trolley
    flash[:notice] =  "Item #{params[:id]} added to the cart."
    render layout: "cart"
  end

  private

  def add_item_to_trolley
    @trolley = Trolley.find_by(shopper_id: session[:shopper_id])
    item = Item.find(params[:id])
    @trolley.items << item
  end
end
