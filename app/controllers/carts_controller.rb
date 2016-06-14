class CartsController < ApplicationController
  def new
    trolley = Trolley.find(params[:trolley_id])
    @cart = trolley.create_cart(principal_amount: trolley.total_price + standard_shipping, trolley_id: params[:trolley_id])
  end

  private
  def standard_shipping
    standard_uk = 3.99
  end
end
