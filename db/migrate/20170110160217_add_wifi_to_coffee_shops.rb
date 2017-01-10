class AddWifiToCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    add_column :coffee_shops, :wifi, :integer
  end
end
