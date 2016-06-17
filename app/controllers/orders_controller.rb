class OrdersController < ApplicationController
  def new
    @order = Order.new(order_params.merge(order_number: order_number))
  end

  private
  def order_number
    "BBA16#{params[:order][:merchant_id]}"
  end
  def order_params
    params.require(:order).permit(:merchant_id, :confirmed_at, :shipped_cart_id, :unshipped_cart_id, :order_number)
  end
end
