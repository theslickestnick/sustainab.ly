class AddNewColumnToRestaurantFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurant_foods, :status, :boolean, :default => true
  end
end
