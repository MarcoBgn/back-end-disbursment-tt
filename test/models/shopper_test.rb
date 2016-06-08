require 'test_helper'

class ShopperTest < ActiveSupport::TestCase
  test "has unique name" do
    s1 = Shopper.new(name: "unique")
    s2 = Shopper.new(name: "unique")
    assert s1.save
    assert ! s2.save
  end
end
