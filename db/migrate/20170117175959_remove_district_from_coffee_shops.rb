class RemoveDistrictFromCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    remove_column :coffee_shops, :district, :string
  end
end
