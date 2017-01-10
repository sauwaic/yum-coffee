class RemoveWifiFromCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    remove_column :coffee_shops, :wifi
  end
end
