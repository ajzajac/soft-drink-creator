class CreateBeverages < ActiveRecord::Migration[6.0]
  def change
    create_table :beverages do |t|
      t.float :size
      t.string :water
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
