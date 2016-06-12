class ItemsController < ApplicationController
  def destroy
    delete_item
    redirect_to root_path
  end

  private
  def delete_item
    if Item.exists?(params[:id])
    item = Item.find(params[:id])
    item.destroy
    flash[:notice] = "Item #{item.name} removed from the trolley #{view_context.link_to("OK", root_url)}".html_safe
    end
  end
end
