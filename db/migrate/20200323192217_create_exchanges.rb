class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.integer :restaurant_id
      t.integer :organization_id
      t.datetime :exchange_start
      t.datetime :exchange_end
      t.boolean :status
      t.string :notes

      t.timestamps
    end
  end
end
