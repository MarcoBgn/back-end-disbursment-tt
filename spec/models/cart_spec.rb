require 'rails_helper'

RSpec.describe Cart, type: :model do

  let(:shopper)  { double :shopper}
  let(:trolley)  { double :trolley}

  before do
    @cart = Cart.create(principal_amount: 2.99, trolley_id: 1)
  end

  it { is_expected.to belong_to :trolley}

  it "has a principal amount property" do
    expect(@cart.principal_amount).to eq 2.99
  end
end
