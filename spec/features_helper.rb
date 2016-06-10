def guest_user
  Shopper.create(name: "Guest Shopper")
  Shop.create
  Shop.first.blue_print_items.create(name: "1", price: 2.99)
end
