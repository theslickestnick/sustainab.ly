class CreateRestaurantFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_foods do |t|
      t.integer :restaurant_id
      t.string :food_type
      t.integer :quantity
      t.date :use_by
      t.string :notes

      t.timestamps
    end
  end
end
