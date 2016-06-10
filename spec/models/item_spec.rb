require 'rails_helper'

RSpec.describe Item, type: :model do

  before do
    @item = Item.create(name: 'test', price: 2.99)
  end

  it { is_expected.to belong_to :trolley}

  it "has a name property" do
    expect(@item.name).to eq 'test'
  end

  it "has a price property" do
    expect(@item.price).to eq 2.99
  end
end
