class AddTrolleyIdToCarts < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :trolley_id, :integer, null: true
  end
end
