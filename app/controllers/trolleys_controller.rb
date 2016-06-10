class TrolleysController < ApplicationController
  def show
    @trolley = Trolley.find_by(shopper_id: session[:shopper_id])
    render layout: "cart"
  end
end
