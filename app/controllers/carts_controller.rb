class CartsController < ApplicationController
  def new
    trolley = Trolley.find(params[:trolley_id])
    @cart = Cart.first_or_create(principal_amount: trolley.total_price + standard_shipping, trolley_id: trolley.id)
  end

  private
  def standard_shipping
    Fees.instance.standard_uk
  end
end
