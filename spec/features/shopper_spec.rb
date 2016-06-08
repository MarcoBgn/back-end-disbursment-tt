require 'rails_helper'

describe 'Feature: Shopper' do

  before do
      Item.create(name: "test", price: 2.99)
      Shopper.create(name: "One")
  end

  it "Can add an item to the cart", js: true do
    visit '/'
    expect(page).to have_content "Welcome Guest Shopper"
    expect{ click_link 'item_1'}.to change(Trolley, :count).by 1
    expect(page).to have_content "Item 1 added to the cart"
  end
end
