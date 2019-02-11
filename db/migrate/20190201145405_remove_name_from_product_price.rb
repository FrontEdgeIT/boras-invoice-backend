class RemoveNameFromProductPrice < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_prices, :price_name, :string
  end
end
