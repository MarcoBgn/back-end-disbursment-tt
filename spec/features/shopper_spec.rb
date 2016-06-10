require 'rails_helper'

describe 'Feature: Shopper' do

  before do
    Shopper.create(name: "Guest Shopper")
    Shop.create
    Shop.first.blue_print_items.create(name: "1", price: 2.99)
  end

  it "Can add an item to the cart", js: true do

    visit '/'
    expect(page).to have_content "Welcome Guest Shopper"
    click_link 'item_1'
    expect(page).to have_content "Item 1 added to the cart"
  end
end
