class CartsController < ApplicationController
  def edit
    initialize_trolley
    p add_item_to_trolley
    flash[:notice] =  "Item #{params[:id]} added to the cart."
    render layout: "cart"
  end

  private
  def initialize_trolley
    @trolley ||= Trolley.create(shopper_id: session[:shopper_id])
  end

  def add_item_to_trolley
    @trolley.items.create(id: params[:id])
  end
end
