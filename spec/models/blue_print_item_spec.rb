require 'rails_helper'

RSpec.describe BluePrintItem, type: :model do

  before do
    @blue_print_item = BluePrintItem.create(name: 'test', price: 2.99)
  end
  it {is_expected.to belong_to :shop}

  it "has a name property" do
    expect(@blue_print_item.name).to eq 'test'
  end

  it "has a price property" do
    expect(@blue_print_item.price).to eq 2.99
  end
end
