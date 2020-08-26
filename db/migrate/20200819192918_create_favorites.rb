class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.string :beverage_id
      t.integer :user_id
      t.string :name
      t.string :base_flavor
      t.string :secondary_flavor
      t.string :water_type
      t.string :extra_flavor

      t.timestamps
    end
  end
end
