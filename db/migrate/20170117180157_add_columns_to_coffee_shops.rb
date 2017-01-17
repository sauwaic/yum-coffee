class AddColumnsToCoffeeShops < ActiveRecord::Migration[5.0]
  def change
    add_column :coffee_shops, :description, :text
    add_reference :coffee_shops, :district, foreign_key: true
  end
end
