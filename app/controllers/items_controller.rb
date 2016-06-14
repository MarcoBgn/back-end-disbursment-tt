class ItemsController < ApplicationController
  def destroy
    delete_item
    redirect_to root_path
  end

  def edit
    add_item_to_trolley
    flash.now[:notice] =  "Item #{params[:id]} added to the trolley. #{view_context.link_to("View Trolley", trolley_path)}"
    render layout: "trolley"
  end

  private
  def add_item_to_trolley
    @trolley = Trolley.find_by(shopper_id: session[:shopper_id])
    item = BluePrintItem.find(params[:id])
    @trolley.items.create(name: item.name, price: item.price)
  end

  def delete_item
    if Item.exists?(params[:id])
    item = Item.find(params[:id])
    item.destroy
    flash[:notice] = "Item #{item.name} removed from the trolley #{view_context.link_to("OK", root_url)}".html_safe
    end
  end
end
