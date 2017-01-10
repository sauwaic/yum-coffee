class AddColumnsToCoffeeShop < ActiveRecord::Migration[5.0]
  def change
    add_column :coffee_shops, :name, :string
    add_column :coffee_shops, :address, :string
    add_column :coffee_shops, :district, :string
    add_column :coffee_shops, :rating, :integer
    add_column :coffee_shops, :wifi, :boolean
    add_column :coffee_shops, :seating, :integer
    add_column :coffee_shops, :website, :string
  end
end
