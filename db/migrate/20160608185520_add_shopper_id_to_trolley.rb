class AddShopperIdToTrolley < ActiveRecord::Migration[5.0]
  def change
    add_column :trolleys, :shopper_id, :integer
  end
end
