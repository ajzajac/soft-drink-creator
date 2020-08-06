class CreateBeverages < ActiveRecord::Migration[6.0]
  def change
    create_table :beverages do |t|
      t.string :name
      t.string :base_flavor
      t.string :secondary_flavor
      t.string :water_type
      t.string :extra_flavor
      t.integer :user_id

      t.timestamps
    end
  end
end
