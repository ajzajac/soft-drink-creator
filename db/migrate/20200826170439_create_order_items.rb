class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.integer :beverage_id
      t.string :name
      t.string :base_flavor
      t.string :secondary_flavor
      t.string :water_type
      t.string :extra_flavor
      t.integer :quantity
      t.integer :order_id
      t.integer :item_price, default: 0

      t.timestamps
    end
  end
end
