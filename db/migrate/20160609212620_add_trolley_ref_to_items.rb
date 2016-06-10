class AddTrolleyRefToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :trolley, foreign_key: true
  end
end
