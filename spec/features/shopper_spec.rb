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
    visit '/'
    click_link 'item_3'
    click_link 'Back'
    click_link "View Trolley"
    expect(page).to have_content 'Total in trolley: £2.99'
  end
end
