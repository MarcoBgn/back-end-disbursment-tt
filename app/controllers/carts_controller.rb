class CartsController < ApplicationController
  def edit
    add_item_to_trolley
    flash.now[:notice] =  "Item #{params[:id]} added to the trolley. #{view_context.link_to("View Trolley", trolley_path)}"
    render layout: "cart"
  end

  private
  def add_item_to_trolley
    @trolley = Trolley.find_by(shopper_id: session[:shopper_id])
    item = BluePrintItem.find(params[:id])
    @trolley.items.create(name: item.name, price: item.price)
  end
end
