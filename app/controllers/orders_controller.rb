class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params.merge(order_number: order_number))
    respond_to do |format|
      if @order.save
        format.html { redirect_to root_path, notice: "Thank you. The order has been sent."}
        format.json { render :show, status: :created, location: @order}
      else
        format.html { redirect_to root_path, notice: "There was a problem with the order"}
        format.json { redirect_to root_path, status: :not_created }
      end
    end
  end

  def show
  end

  private
  def order_number
    "BBA16#{params[:order][:merchant_id]}"
  end
  def order_params
    params.require(:order).permit(:merchant_id, :confirmed_at, :shipped_cart_id, :unshipped_cart_id, :order_number)
  end
end
