require 'test_helper'

class ItemTest < ActiveSupport::TestCase
  test "has a name and price" do
    s1 = Shopper.new(name: "test", price: 2.99 )
    assert s1.save
  end
end
