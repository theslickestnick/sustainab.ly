class AddDefaultValueToExchanges < ActiveRecord::Migration[6.0]
  def change
    change_column :exchanges, :status, :boolean, :default => true
  end
end
