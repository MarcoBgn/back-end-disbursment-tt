def guest_user
  Shopper.create(name: "Guest Shopper")
  Shop.create
  Shop.first.blue_print_items.create(name: "1", price: 2.99)
  Merchant.create(id: 1, name: "test merchant")
end

def add_item_and_view_trolley(item_id)
  visit '/'
  click_link item_id
  click_link 'Back'
  click_link "View Trolley"
end
