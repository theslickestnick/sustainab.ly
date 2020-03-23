class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.integer :restaurant_id
      t.integer :organization_id
      t.string :exchange_hours
      t.string :notes

      t.timestamps
    end
  end
end
