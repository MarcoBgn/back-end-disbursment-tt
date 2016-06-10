class CreateBluePrintItems < ActiveRecord::Migration[5.0]
  def change
    create_table :blue_print_items do |t|
      t.string :name
      t.decimal :price
      t.string :code
      t.belongs_to :shop, index: true
      t.timestamps
    end
  end
end
