require 'rails_helper'
require 'features_helper'

describe 'Feature: Shopper' do

  before do
    guest_user
  end

  it "Can add an item to the trolley", js: true do
    visit '/'
    expect(page).to have_content "Welcome Guest Shopper"
    click_link 'item_1'
    expect(page).to have_content "Item 1 added to the trolley"
    expect(Trolley.first.items.count).to eq 1
  end

  it "Can add an item to the trolley and go back to the home page", js: true do
    visit '/'
    expect(page).to have_content "Welcome Guest Shopper"
    click_link 'item_2'
    expect(page).to have_content "Item 2 added to the trolley"
    click_link 'Back'
    expect(page).to have_content "Welcome Guest Shopper"
  end

  it "Can view the state of the trolley", js: true do
    add_item_and_view_trolley('item_3')
    expect(page).to have_content 'Total in trolley: £2.99'
  end

  it "Can remove an item from the trolley" do
    add_item_and_view_trolley('item_4')
    click_link "delete_1"
    expect(page).to have_content "Item 1 removed from the trolley"
  end

  it "Can proceed to checkout" do
    add_item_and_view_trolley('item_5')
    click_link 'Checkout'
    expect(page).to have_content "Proceed to Checkout"
  end

  it "Can create a new order" do
    add_item_and_view_trolley('item_6')
    click_link 'Checkout'
    click_link 'Proceed to payment'
    expect(page).to have_content "Thank you. Your order has been sent"
  end
end
